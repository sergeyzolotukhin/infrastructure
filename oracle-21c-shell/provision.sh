#!/bin/bash

readonly SCRIPT_DIR=/vagrant
readonly MEDIA=/vagrant

# load environment variables from .env
set -a
. "$SCRIPT_DIR"/.env

set +a

readonly FILE="$MEDIA/LINUX.X64_213000_db_home.zip"
if [[ ! -f "$FILE" ]]; then
  echo "$FILE not found"
  exit 1
fi

# Install Oracle Preinstallation RPM
yum -y install oracle-database-preinstall-21c

# Create directories
mkdir -p "$ORACLE_HOME"
chown -R oracle:oinstall "$ORACLE_BASE"/..
chmod -R 775 "$ORACLE_BASE"/..

# Set environment variables
cat <<EOT >>/home/oracle/.bash_profile
export ORACLE_BASE=$ORACLE_BASE
export ORACLE_HOME=$ORACLE_HOME
export ORACLE_SID=$ORACLE_SID
export PATH=\$PATH:\$ORACLE_HOME/bin:\$ORACLE_HOME/jdk/bin
EOT

# Install rlwrap and set alias
OS_VERSION=$(. /etc/os-release && echo "$VERSION")
readonly OS_VERSION
case ${OS_VERSION%%.*} in
  7)
    yum -y --enablerepo=ol7_developer_EPEL install rlwrap
    cat <<EOT >>/home/oracle/.bashrc
alias sqlplus='rlwrap sqlplus'
EOT
    ;;
esac

# Set oracle password
echo oracle:"$ORACLE_PASSWORD" | chpasswd

TEMP_DIR=$(mktemp -d)
readonly TEMP_DIR
chmod 755 "$TEMP_DIR"

# Unzip downloaded Oracle Database software
su - oracle -c "unzip -d $ORACLE_HOME $FILE"

# Install Mo (https://github.com/tests-always-included/mo)
curl -sSL https://git.io/get-mo -o /usr/local/bin/mo
chmod +x /usr/local/bin/mo

# Install Oracle Database
/usr/local/bin/mo "$SCRIPT_DIR"/db_install.rsp >"$TEMP_DIR"/db_install.rsp
set +e +o pipefail
su - oracle -c "cd $ORACLE_HOME && ./runInstaller -silent -ignorePrereq -waitforcompletion -responseFile $TEMP_DIR/db_install.rsp"
set -e -o pipefail
"$ORACLE_BASE"/../oraInventory/orainstRoot.sh
"$ORACLE_HOME"/root.sh

# Create a listener using netca
su - oracle -c "netca -silent -responseFile $ORACLE_HOME/assistants/netca/netca.rsp"

# Create a database
/usr/local/bin/mo "$SCRIPT_DIR"/dbca.rsp >"$TEMP_DIR"/dbca.rsp
su - oracle -c "dbca -silent -createDatabase -responseFile $TEMP_DIR/dbca.rsp"

rm -rf "$TEMP_DIR"


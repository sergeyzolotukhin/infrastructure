#!/bin/bash

# create home env variable
DE_HOME=$(dirname $(dirname $(readlink -f ${BASH_SOURCE[0]})))
if ! grep -q "^export DE_HOME=" ~/.bashrc; then
  echo -e "export DE_HOME=$DE_HOME" >> ~/.bashrc
fi

# add a script as a command
if [ ! -L /usr/local/bin/dev-env ]; then
  ln -s $DE_HOME/sh/dev-env.sh /usr/local/bin/dev-env
fi

# add alias
if [ "$(type -t de)" != 'alias' ]; then
  if ! grep -q "^alias de=" ~/.bashrc; then
    echo "alias de='dev-env'" >> ~/.bashrc
  fi
fi

# debug

# reload bashrc
# . ~/.bashrc

# other
# echo "---> $DE_HOME"
# cat ~/.bashrc
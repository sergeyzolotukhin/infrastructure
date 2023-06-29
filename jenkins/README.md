[install agent](https://github.com/culmat/vagrant.jenkins.slave)

### Managing systemd services
https://www.jenkins.io/doc/book/system-administration/systemd-services/

https://www.linkedin.com/pulse/automating-jenkins-binary-installation-mohamed-mostafa/
https://www.popularowl.com/jenkins/automating-jenkins-install-docker-terraform/
https://www.jenkins.io/doc/book/installing/offline/
https://serverspace.ru/support/help/kak-avtomatizirovat-nastrojku-jenkins-s-pomoshhyu-docker-i-konfiguraczii-jenkins-kak-koda/
https://verifa.io/blog/getting-started-with-jenkins-config-as-code/index.html

https://www.cinqict.nl/blog/building-a-jenkins-development-docker-image

### How to install plugin
Jenkins CLI
    Using the CLI over SSH
    Using the CLI client

java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ install-plugin <name>

https://www.jenkins.io/doc/book/managing/cli/

Plugin Installation Manager Tool.
    https://github.com/jenkinsci/plugin-installation-manager-tool

Groovy init script
    https://stackoverflow.com/questions/34761047/how-to-install-jenkins-plugins-from-command-line

manually
    Yes, you can. Download the plugin (*.hpi file) and put it in the following directory:
    <jenkinsHome>/plugins/

### How to create a jobs

https://github.com/jenkinsci/configuration-as-code-plugin/blob/master/docs/seed-jobs.md

### Shell tee command

The [tee] reads from standard input and writes to standard output and one or more files
The reason tee is used to write to sources.list is because the file needs to be opened as the root user in order to write to it.
The following may seem like it would do the same thing

sudo echo line >> /etc/apt/sources.list

but the problem is, the file is not opened by sudo.
The file is opened before sudo is even run, by the shell, which is running as your own user.

#### How to Create Personal Access Token on GitHub
https://docs.github.com/ru/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens
https://github.com/settings/tokens

#### How to access form Jenkins to GitNub
https://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@github.com/szolotukhin-java/maven.git

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

https://stackoverflow.com/questions/61105368/how-to-use-github-personal-access-token-in-jenkins

#### How to install maven and java on jenkins

https://stackoverflow.com/questions/70681276/jenkins-pipeline-error-tool-type-maven-does-not-have-an-install
https://www.jenkins.io/blog/2017/02/07/declarative-maven-project/

### What is Job DSL in Jenkins

https://plugins.jenkins.io/job-dsl/
https://www.digitalocean.com/community/tutorials/how-to-automate-jenkins-job-configuration-using-job-dsl

#### Create job

https://verifa.io/blog/getting-started-with-jenkins-config-as-code/index.html
https://github.com/jenkinsci/job-dsl-plugin/blob/master/docs/JCasC.md

#### How to install plugin in Jenkins

Plugin Installation Manager Tool for Jenkins
https://github.com/jenkinsci/plugin-installation-manager-tool

#### systemd.unit — Unit configuration

https://www.freedesktop.org/software/systemd/man/systemd.unit.html
https://www.digitalocean.com/community/tutorials/understanding-systemd-units-and-unit-files

#### How to use jenkins-cli to install plugin

http://localhost:8080/jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ -auth admin:admin list-plugins
java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ -auth admin:admin list-plugins > plugins-cli.txt


#### jenkins-plugin-manager NOT WORKING

java -jar jenkins-plugin-manager-2.12.11.jar --war /usr/share/java/jenkins.war --plugin-file /your/path/to/plugins.txt --plugins delivery-pipeline-plugin:1.3.2 deployit-plugin
java -jar jenkins-plugin-manager-2.12.11.jar --war /usr/share/java/jenkins.war --list --verbose

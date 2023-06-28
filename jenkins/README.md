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
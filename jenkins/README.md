#### Server URL
http://localhost:8080/

#### Pipeline as Code (Pipeline plugin)
https://www.jenkins.io/doc/book/pipeline/pipeline-as-code/

#### Jenkins Job DSL Plugin
https://github.com/jenkinsci/configuration-as-code-plugin/blob/master/docs/seed-jobs.md
https://gerg.dev/2020/06/creating-a-job-dsl-seed-job-with-jcasc/
https://stackoverflow.com/questions/47455783/create-jenkins-job-from-dsl-without-seed-job

#### Configuration as Code plugin
https://www.jenkins.io/doc/book/managing/casc/
https://stackoverflow.com/questions/54434162/how-to-create-a-jenkins-pipelinejob-via-configuration-as-code

#### Jenkins - Groovy Hook Scripts
https://www.jenkins.io/doc/book/managing/groovy-hook-scripts/
https://stackoverflow.com/questions/58616715/jenkins-execute-groovy-script-before-loading-plugins
https://fishi.devtail.io/weblog/2019/01/06/jenkins-as-code-part-1/
https://blog.thesparktree.com/you-dont-know-jenkins-part-2

#### How I can create a Jenkins Job automatically ?

* Configuration as Code plugin:
* Jenkins CLI: 
* the Job DSL plugins (seed job)
* Groovy Hook Scripts
* Jenkins Job Builder

#### Multiple pipeline jobs versus single large pipeline job
https://www.metamorphant.de/blog/posts/2019-03-11-jenkins-101-downstream-projects/
https://wiki.jenkins.io/JENKINS/Splitting-a-big-job-into-smaller-jobs.html
https://www.theknowledgeacademy.com/blog/types-of-jenkins-pipeline/

##### large pipeline job
disadvantage
* you cannot easily execute the single stages
  https://www.jenkins.io/doc/book/pipeline/running-pipelines/
  https://stackoverflow.com/questions/38129745/jenkins-build-pipeline-restart-at-stage

##### Multiple pipeline jobs
disadvantage
* shared variables cannot be used anymore 
* shared code cannot be used anymore

#### What is a matrix job

https://devopscube.com/setup-slaves-on-jenkins-2/
https://devopscube.com/install-configure-jenkins-2-0/

#### Jenkins - restrict which nodes can be selected by user when creating jobs
https://devops.stackexchange.com/questions/12191/jenkins-restrict-which-nodes-can-be-selected-by-user-when-creating-jobs
https://devops.supportsages.com/quick-guide-on-folder-authorisation-strategy-in-jenkins-b28b248c07be

#### Jenkins Docker
https://hub.docker.com/r/jenkins/jenkins
https://github.com/jenkinsci/docker/blob/master/README.md

#### Start Docker containers on-demand with systemd socket activation
https://medium.com/@kiankasad/start-docker-containers-on-demand-with-systemd-socket-activation-548f3b8d2514

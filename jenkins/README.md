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

#### How can I create a Jenkins Job automatically ?

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

#### Jenkins with Dynamic Docker Agents
https://devopscube.com/docker-containers-as-build-slaves-jenkins/
https://www.coachdevops.com/2022/08/jenkins-build-agent-setup-using-docker.html
https://octopus.com/blog/jenkins-dynamic-build-agents
https://whatap.io/bbs/board.php?bo_table=blog_en&wr_id=51&page=2

#### Parallel Test Executor
https://plugins.jenkins.io/parallel-test-executor/
https://www.jenkins.io/doc/pipeline/steps/parallel-test-executor/
https://github.com/jenkinsci/parallel-test-executor-plugin/tree/master
https://www.jenkins.io/blog/2016/06/16/parallel-test-executor-plugin/
https://www.baeldung.com/ops/jenkins-run-job-parallel
https://medium.com/@mohamedsaidibrahim/load-balancing-tests-across-jenkins-agents-optimize-your-test-execution-81c5c2297f7e

#### Create Jenkins Agent
https://github.com/jenkinsci/configuration-as-code-plugin/blob/a6983ff60e0cf198ce02d7992bcba927197174db/demos/build_agents/README.md?plain=1#L37
https://devopscube.com/setup-slaves-on-jenkins-2/
https://buildkite.com/resources/blog/automating-jenkins-with-jcasc-configuration-as-code/
https://www.hairizuan.com/connect-slaves-jenkins-configured-with-jcasc-docker/
https://fishi.devtail.io/weblog/2019/01/12/jenkins-as-code-part-2/

https://github.com/chorrell/install-jenkins-agent/blob/main/install-jenkins-agent.sh
https://medium.com/@rejani2906/day-28-jenkins-agents-2d17a883d29f
https://medium.com/@minaxijoshi3101/create-jenkins-agent-using-jnlp-java-web-start-protocol-and-start-jenkins-as-a-service-on-a-linux-de8ef1ba69cf
https://dev.to/logesh-sakthivel/adding-new-jenkins-nodeagent-3lij
https://medium.com/@DevOpsfreak/how-to-configure-jenkins-slave-nodes-by-launching-agents-via-ssh-or-launch-agent-via-execution-of-a0cf6d6dd032
https://linuxhint.com/install-jenkins-agent-on/

#### Dynamically provisioned Docker agents
"g:\_book\_devops\jenkins\Leszko Rafal - Continuous Delivery with Docker and Jenkins, 3rd Edition - 2022\Leszko Rafal - Continuous Delivery with Docker and Jenkins, 3rd Edition - 2022.pdf"

#### Other
https://codefresh.io/learn/continuous-integration/continuous-integration-ci-why-how-and-differences-between-ci-and-cd/
https://www.ysoft.com/aiva/blog/what-is-continuous-integration
https://github.com/jenkinsci/vagrant-plugin

#### Pre-Tested Commit 
https://habr.com/ru/articles/182042/
Patch Parameter Plugin.
Jenkins Control Plugin

https://medium.com/outbrain-engineering/git-mono-branch-workflow-pre-tested-commits-4b34949310ad

#### IDEA Jenkins Plugin 0.13.21 for Jetbrains products
https://github.com/mcmics/jenkins-control-plugin

#### Is it possible not to trigger automatic build from Git if only Jenkinsfile is being modified?
https://community.jenkins.io/t/is-it-possible-not-to-trigger-automatic-build-from-git-if-only-jenkinsfile-is-being-modified/978/5
https://blog.devops.dev/jenkins-get-the-latest-changed-files-list-commit-id-authorname-and-commit-message-83c870fc8dbb

https://medium.com/@harsz89/jenkins-pipeline-build-with-only-changed-component-using-changeset-feature-908d87bd554d
https://stackoverflow.com/questions/28311341/jenkins-and-git-how-to-grab-a-committers-name
https://stackoverflow.com/questions/63063977/how-to-get-latest-git-commit-author-name-or-message-in-jenkins-multibranch-scrip
https://devops.stackexchange.com/questions/1846/accessing-the-committers-name-as-a-jenkinsfile-environment-variable
https://www.baeldung.com/ops/jenkins-last-successful-build-status

#### How To Run SSH Command On Remote Machine
https://engineering.cerner.com/blog/ssh-steps-for-jenkins-pipeline/
https://jhooq.com/jenkins-ssh-with-scp-sftp/

#### Credentials Binding Plugin
https://www.jenkins.io/doc/pipeline/steps/credentials-binding/

#### Plugin: workflow-aggregator
https://docs.cloudbees.com/plugins/ci/workflow-aggregator

#### Plugin: github-branch-source
https://docs.cloudbees.com/docs/cloudbees-ci/latest/cloud-admin-guide/github-branch-source-plugin

#### Plugin: ssh-slaves
https://github.com/jenkinsci/ssh-agents-plugin/blob/main/doc/CONFIGURE.md

#### Plugins
https://plugins.jenkins.io/pipeline-graph-view/
https://plugins.jenkins.io/embeddable-build-status/
https://plugins.jenkins.io/depgraph-view/

#### Advanced Jenkins Pipeline Patterns
https://moldstud.com/articles/p-top-5-advanced-jenkins-pipeline-patterns-every-power-user-should-know
https://www.jenkins.io/blog/2016/10/16/stage-lock-milestone/
https://www.jenkins.io/doc/book/pipeline/shared-libraries/#defining-custom-steps
https://codilime.com/blog/code-duplication-in-jenkinsfiles/
https://www.jenkins.io/blog/2019/01/08/mpl-modular-pipeline-library/
https://github.com/halkeye-docker/docker-jenkins/blob/master/jenkins.yaml#L41
https://bmuschko.com/blog/jenkins-shared-libraries/
https://www.papiocloud.com/blog/2021-09-jenkins-shared-libraries/
https://www.jenkins.io/doc/pipeline/steps/pipeline-groovy-lib/  - library
https://plugins.jenkins.io/pipeline-github-lib/ - @Library('github.com/jglick/sample-pipeline-library') _
@Library
load
LibraryIdentifier

#### Questions
Creating Custom Pipeline Step ?
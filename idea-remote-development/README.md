#### Installing IntelliJ IDEA on Ubuntu
https://medium.com/@ahsanilyasabbasi/installing-intellij-idea-on-ubuntu-71237d41bc12

#### Connect to a remote project on a manually launched remote IDE (Server-to-client flow)

https://www.jetbrains.com/help/idea/remote-development-overview.html#use_idea
https://www.linkedin.com/pulse/develop-like-its-local-remote-java-development-idea-olga-strijewski-vwylc/

#### Read 

https://github.com/ThallesP/idea-remote-oracle-deploy/tree/main
https://pavel.pink/blog/jetbrains-gateway-corporate
https://blog.cppse.nl/improve-performance-jetbrains-ide-remote-machine

https://victoronsoftware.com/posts/remote-development-environment/
https://aws.amazon.com/ru/blogs/dotnet/remote-development-on-aws-using-jetbrains-rider/

#### remote-dev-server.sh
https://www.jetbrains.com/help/idea/remote-development-a.html#use_local_ide

#### How to run backend server
/opt/idea/bin/remote-dev-server.sh run /var/learn-java-gradle/ --ssh-link-host 192.168.56.2 --ssh-link-user root --ssh-link-port 22

#### TODO
* install jdk 17 + 

* run Remote backend
* activate idea

git clone https://username:token@github.com/username/repo.git
https://github.com/rofrano/lab-vagrant/blob/master/Vagrantfile
https://github.com/techiescamp/vagrant-kubeadm-kubernetes/blob/main/Vagrantfile

#### Other 
/var/learn-java-gradle/learn-gradle/custom-plugin/use/build.gradle
//    id 'ua.in.sz.geadle.java-library-extended' version '1.0.0'

/var/learn-java-gradle/buildSrc/src/main/groovy/ua.in.sz.java-library.gradle
value = "token not found"
//                value = "token " + "$gitHubToken"

Join link: tcp://127.0.0.1:5990#jt=a36a8fd5-8047-4805-bcd4-e23a8b012602&p=IU&fp=63D7740728F76FA976680E2A89238FFAE6E741E748FC1179E17FB24B71A6F080&cb=251.27812.49&newUi=true&jb=21.0.7b895.130
Http link: https://code-with-me.jetbrains.com/remoteDev#idePath=%2Fopt%2Fidea&projectPath=%2Fvar%2Flearn-java-gradle&host=192.168.56.2&port=22&user=root&type=ssh&deploy=false&newUi=true
Gateway link: jetbrains-gateway://connect#idePath=%2Fopt%2Fidea&projectPath=%2Fvar%2Flearn-java-gradle&host=192.168.56.2&port=22&user=root&type=ssh&deploy=false&newUi=true

Join link: tcp://127.0.0.1:5990#jt=8fdbfdc1-5cb2-4908-a548-95f07c90f5a3&p=IU&fp=39FE9E7A96B577F4F9CD94B4FC8C6038FBEB9935EE085E5E36E907A1EF28C19D&cb=251.27812.49&newUi=true&jb=21.0.7b895.130
Http link: https://code-with-me.jetbrains.com/remoteDev#idePath=%2Fopt%2Fidea&projectPath=%2Fvar%2Flearn-java-gradle&host=192.168.56.2&port=22&user=root&type=ssh&deploy=false&newUi=true
Gateway link: jetbrains-gateway://connect#idePath=%2Fopt%2Fidea&projectPath=%2Fvar%2Flearn-java-gradle&host=192.168.56.2&port=22&user=root&type=ssh&deploy=false&newUi=true

https://stackoverflow.com/questions/23369917/cleaner-way-to-write-multiple-sed-commands
#### Oracle VM VirtualBox Web Service
https://docs.oracle.com/en/virtualization/virtualbox/6.0/admin/vboxwebsrv-daemon.html
https://github.com/jenkinsci/virtualbox-plugin/tree/master

https://github.com/alexec/maven-vbox-plugin
https://github.com/alexec/maven-vbox-plugin-example
https://github.com/nicoulaj/vagrant-maven-plugin
https://nicoulaj.github.io/vagrant-maven-plugin/examples/running-a-vm-during-integration-tests.html
https://martincarstenbach.com/2020/05/05/versioning-for-your-local-vagrant-boxes-adding-a-new-box/

#### Network

https://www.virtualbox.org/manual/ch06.html
https://www.nakivo.com/blog/virtualbox-network-setting-guide/

VBoxManage list vms
VBoxManage showvminfo "apache2-1" --machinereadable
VBoxManage startvm "apache2-1"
VBoxManage controlvm "apache2-1" poweroff

VBoxManage snapshot "apache2-1" take "N-01"
VBoxManage snapshot "apache2-1" take "N-02-01"
VBoxManage snapshot "apache2-1" take "N-03"
VBoxManage snapshot "apache2-1" take "N-04"
VBoxManage snapshot "apache2-1" delete "N-03"
VBoxManage snapshot "apache2-1" restore "N-02"
VBoxManage snapshot "apache2-1" restorecurrent
VBoxManage snapshot <uuid|vmname> edit <snapshot-name | --current>
VBoxManage snapshot "apache2-1" list
VBoxManage snapshot "apache2-1" list --machinereadable
VBoxManage snapshot "apache2-1" list --details

--machinereadable
C:\soft\oraclevm-6.1\VirtualBox.exe

VBoxManage list 
[--long] 
[--sorted] 
[bridgedifs | cloudnets | 
cloudprofiles | cloudproviders | 
cpu-profiles | dhcpservers | dvds | extpacks | floppies | groups | hddbackends | hdds | hostcpuids | hostdrives | hostdvds | hostfloppies | hostinfo | hostonlyifs |
hostonlynets | intnets | natnets | ostypes | runningvms | screenshotformats | systemproperties | usbfilters | usbhost | 
vms | webcams]

https://commons.apache.org/proper/commons-exec/tutorial.html
https://www.baeldung.com/run-shell-command-in-java
https://sanaulla.info/2010/09/07/execute-external-process-from-within-jvm-using-apache-commons-exec-library-2/
https://www.geeksforgeeks.org/java-runtime-exec-method/
https://kazurayam.github.io/subprocessj/

####

VBoxManage snapshot "apache2-1" list --details

Name: N-01 (UUID: 7e522742-f06b-4007-b7c0-1ca7e6cf6e18)
    Name: N-02 (UUID: 36814143-0ecb-42ba-b4a1-57f037089a65)
        Name: N-02 (UUID: bc6ca7c2-8756-4b05-9b04-3b05f0a41191)
            Name: N-04 (UUID: 667e020d-bdf0-40a3-9f4a-65cc89378cd7)
        Name: N-02-01 (UUID: 0d332287-ca2c-470b-bb95-01077d69e334) *

VBoxManage snapshot "apache2-1" list --machinereadable

SnapshotName="N-01"
SnapshotUUID="7e522742-f06b-4007-b7c0-1ca7e6cf6e18"

SnapshotName-1="N-02"
SnapshotUUID-1="36814143-0ecb-42ba-b4a1-57f037089a65"

SnapshotName-1-1="N-02"
SnapshotUUID-1-1="bc6ca7c2-8756-4b05-9b04-3b05f0a41191"

SnapshotName-1-1-1="N-04"
SnapshotUUID-1-1-1="667e020d-bdf0-40a3-9f4a-65cc89378cd7"

SnapshotName-1-2="N-02-01"
SnapshotUUID-1-2="0d332287-ca2c-470b-bb95-01077d69e334"

CurrentSnapshotName="N-02-01"
CurrentSnapshotUUID="0d332287-ca2c-470b-bb95-01077d69e334"
CurrentSnapshotNode="SnapshotName-1-2"

#### PowerShell

https://plugins.jetbrains.com/plugin/10249-powershell
https://blog.ironmansoftware.com/daily-powershell/powershell-debugging-terminal/
https://medium.com/tomtalkspowershell/debugging-powershell-commands-tips-and-tricks-4f032ae3fdab
https://www.techtarget.com/searchitoperations/tutorial/How-to-successfully-debug-PowerShell-scripts

https://draculatheme.com/powershell-ise
https://www.youtube.com/watch?v=j_w0wowhbKQ&ab_channel=RuFrame
https://www.youtube.com/watch?v=_13576fY7KU&list=PL1aqAoC4A0sXnzbnAvIa36s8P3Ogo8FR_&ab_channel=RuFrame

https://jdhitsolutions.com/blog/scripting/1502/managing-virtualbox-with-powershell/


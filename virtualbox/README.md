#### Oracle VM VirtualBox Web Service
https://docs.oracle.com/en/virtualization/virtualbox/6.0/admin/vboxwebsrv-daemon.html
https://github.com/jenkinsci/virtualbox-plugin/tree/master

https://github.com/alexec/maven-vbox-plugin
https://github.com/alexec/maven-vbox-plugin-example
https://github.com/nicoulaj/vagrant-maven-plugin
https://nicoulaj.github.io/vagrant-maven-plugin/examples/running-a-vm-during-integration-tests.html
https://martincarstenbach.com/2020/05/05/versioning-for-your-local-vagrant-boxes-adding-a-new-box/

VBoxManage list vms
VBoxManage showvminfo "apache2-1" --machinereadable
VBoxManage startvm "apache2-1"
VBoxManage controlvm "apache2-1" poweroff

VBoxManage snapshot "apache2-1" take "N-01"
VBoxManage snapshot "apache2-1" take "N-02"
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
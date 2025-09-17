#### Environment Variables
https://stackoverflow.com/questions/16708917/how-do-i-include-variables-in-my-vagrantfile
https://medium.com/@eren.c.uysal/dynamic-vagrantfile-environment-variables-in-vagrant-5959402a9541
https://stackoverflow.com/questions/14733681/vagrant-d-outside-of-the-home-folder

    path = "#{ENV["USERPROFILE"]}/.vagrant.d"

https://0x63.me/variables-and-comments-in-vagrantfile/
https://github.com/gosuri/vagrant-env/tree/master

    File.expand_path('~')
    config.vm.synced_folder File.expand_path('~/.vagrant.d'), "/secrets"

https://stackoverflow.com/questions/29394930/share-a-single-file-in-vagrant
    
    config.vm.synced_folder "host/folder/", "box/folder/", type: "rsync", rsync__args: ["--include=file.conf"]

https://developer.hashicorp.com/vagrant/docs/vagrantfile#load-order-and-merging

#### Read only -> This sets directory permissions to 555 (r-xr-xr-x) and file permissions to 444 (r--r--r--).
config.vm.synced_folder "src", "/vagrant_data", mount_options: { "dmode" => "555", "fmode" => "444" }

#### Store Vagrant VM in custom folder
https://williamdurand.fr/2012/12/06/installing-vagrant-in-a-restricted-environment/#customizing-the-default-directories
https://stackoverflow.com/questions/36332996/store-vagrant-vm-in-custom-folder
https://stackoverflow.com/questions/21050496/vagrant-virtualbox-second-disk-path

VBoxManage import .... --disk /path
the --disk option specifies the target path where the image will be stored
https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/vboxmanage-import.html
https://www.virtualbox.org/manual/ch08.html
https://developer.hashicorp.com/vagrant/docs/disks/usage
https://developer.hashicorp.com/vagrant/docs/disks/configuration

#### You may want to keep your Vagrant boxes in your own repository
https://dev.to/aciklab/how-to-create-private-vagrant-cloud-on-ubuntu-2004-3p60

####
To use a local .box file as the source for a Vagrant box, you specify its path in the Vagrantfile using the file:// scheme in the config.vm.box_url setting.
Here's how to configure your Vagrantfile:

https://developer.hashicorp.com/vagrant/docs/vagrantfile/machine_settings#config-vm-box_url

Vagrant.configure("2") do |config|
    # Set the name of your box
    config.vm.box = "my_custom_box"
    
    # Specify the local path to your .box file using the file:// scheme
    # For Linux/macOS:
    # config.vm.box_url = "file:///path/to/your/my_custom_box.box"
    
    # For Windows:
    # config.vm.box_url = "file:///C:/path/to/your/my_custom_box.box"
    # Note: Ensure to use forward slashes (/) even on Windows and potentially URL encode special characters.
end

#### config.vagrant.plugins

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    
    # require plugin https://github.com/leighmcculloch/vagrant-docker-compose
    config.vagrant.plugins = "vagrant-docker-compose"
    
    # install docker and docker-compose
    config.vm.provision :docker
    config.vm.provision :docker_compose
    
    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--ioapic", "on"]
        vb.customize ["modifyvm", :id, "--memory", "2048"]
        vb.customize ["modifyvm", :id, "--cpus", "2"]
    end
end

#### Multi-Machine
https://developer.hashicorp.com/vagrant/docs/multi-machine#autostart-machines

#### Starting in Ubuntu 24.04, Ubuntu no longer produces Vagrant images
https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/39890
https://documentation.ubuntu.com/public-images/public-images-how-to/build-vagrant-with-bartender/


#### Packer
https://github.com/game-sales-analytics/vagrant-alpine315-docker/

#### To destroy all Vagrant virtual machines

vagrant global-status

vagrant destroy 2ec473d --force
vagrant destroy f678115 --force
vagrant destroy bb7d24e --force
vagrant destroy 6a5255a --force

vagrant global-status --prune
rm -rf .vagrant

vagrant plugin expunge --reinstall
vagrant box update

#### Removing Vagrant boxes (optional):

vagrant box list
vagrant box remove <box-name>

#### Disk space
c:\Users\<user>\.gradle         12 GB
c:\Users\<user>\.m2             10 GB
c:\Users\<user>\.vagrant.d      5 GB

c:\Users\<user>\Documents       3 GB
c:\Users\<user>\Downloads       10 GB

c:\Users\<user>\AppData\Local\Google        15 GB
c:\Users\<user>\AppData\Local\JetBrains     24 GB
c:\Users\<user>\AppData\Local\Microsoft     1.5 GB
c:\Users\<user>\AppData\Local\Temp          10 GB

c:\Users\<user>\AppData\Roaming\JetBrains   12 GB

c:\Program Files        6 GB
c:\Program Files (x86)  5 GB
c:\ProgramData          5 GB
c:\soft                 37 GB

c:\WINDOWS          42 GB
c:\hiberfil.sys     26 GB
c:\pagefile.sys     19 GB

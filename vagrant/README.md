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

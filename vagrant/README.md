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
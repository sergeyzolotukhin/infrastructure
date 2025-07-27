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
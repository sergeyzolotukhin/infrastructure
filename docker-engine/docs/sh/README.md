#### Bash Script - Command Substitution
https://gist.github.com/waylan/4080362

development environment

```shell
ln -s /vagrant/sh/dev-env.sh /usr/local/bin/dev-env
alias de='dev-env'
rm /usr/local/bin/dev-env

alias 
```

#### Bash Script - Relative paths
https://medium.com/@Aenon/bash-location-of-current-script-76db7fd2e388
https://www.baeldung.com/linux/bash-get-location-within-script
https://www.baeldung.com/linux/readlink-tutorial

#### Nginx fastcgi shell script docker
https://mac-blog.org.ua/docker-nginx-shell-script/
https://www.baeldung.com/ops/nginx-run-shell-script

#### To find the "max" file name prefix
find /vagrant/.dumps -type f -name "[0-9][0-9]_*.dump" -exec basename {} \; | sed -E 's/^(..).*$/\1/' | sort -n | tail -1

#### New file prefix - (max + 1)
max_prefix=$(find /vagrant/.dumps -type f -name "[0-9][0-9]_*.dump" -exec basename {} \; | sed -E 's/^(..).*$/\1/' | sort -n | tail -1)
next_prefix=$(expr $max_prefix + 1)
new_file_prefix=$(printf "%02d\n" "$next_prefix")
echo $max_prefix $next_prefix $new_file_prefix
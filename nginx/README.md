#### home URL

[Home](http://192.168.56.2/)

#### URLs

https://www.digitalocean.com/community/tutorials/nginx-location-directive
https://habr.com/ru/articles/348206/
https://www.digitalocean.com/community/tutorials/understanding-nginx-server-and-location-block-selection-algorithms
https://nginx.org/en/docs/beginners_guide.html
https://javorszky.co.uk/2019/03/28/etag-if-match-nginx-and-you/

Nginx HTTP server cannot memory-cache files or pages.
https://stackoverflow.com/questions/38813399/cache-a-static-file-in-memory-forever-on-nginx

##### Install NGINX 
https://phoenixnap.com/kb/install-nginx-ubuntu-22-04

##### NGINX
sendfile
By default, NGINX handles file transmission itself and copies the file into the buffer before sending it. 
Enabling the sendfile directive eliminates the step of copying the data into the buffer 
and enables direct copying data from one file descriptor to another

##### ETag

header('ETag: "' . sprintf('%x-%x', $lastModified, $length) . '"');

https://serverfault.com/questions/690341/algorithm-behind-nginx-etag-generation

##### SCP

scp [options] [source] [destination]

https://www.makeuseof.com/scp-command-in-linux/

-p      Preserves modification times, access times, and file mode bits from the source file.
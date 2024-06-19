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

# NGINX
=======================================================================================================================

sendfile
By default, NGINX handles file transmission itself and copies the file into the buffer before sending it. 
Enabling the sendfile directive eliminates the step of copying the data into the buffer 
and enables direct copying data from one file descriptor to another

##### ETag

Default: etag on;

header('ETag: "' . sprintf('%x-%x', $lastModified, $length) . '"');

https://serverfault.com/questions/690341/algorithm-behind-nginx-etag-generation

##### If-Modified-Since

https://nginx.org/en/docs/http/ngx_http_core_module.html#etag

Syntax:	if_modified_since off | exact | before;
Default:
if_modified_since exact;

###### If-Match

https://javorszky.co.uk/2019/03/28/etag-if-match-nginx-and-you/

###### Expires

Syntax:	    expires [modified] time;
            expires epoch | max | off;
Default:    expires off;
Context:	http, server, location, if in location

https://nginx.org/en/docs/http/ngx_http_headers_module.html

# HTTP headers:
=======================================================================================================================

Expires -   We can set the Expires header only in HTTP responses.
The value of Expires is a timestamp that denotes the point in time
after which a cache should consider the response stale.
Notably, caches favor the Cache-Control header with the max-age directive over Expires.
ETag
If-Match
If-Modified-Since
Cache-Control

# SCP
=======================================================================================================================

scp [options] [source] [destination]

https://www.makeuseof.com/scp-command-in-linux/

-p      Preserves modification times, access times, and file mode bits from the source file.





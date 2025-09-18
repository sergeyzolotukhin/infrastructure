# NGINX caching
=======================================================================================================================

https://iamakulov.com/notes/caching/

sendfile
By default, NGINX handles file transmission itself and copies the file into the buffer before sending it.
Enabling the sendfile directive eliminates the step of copying the data into the buffer
and enables direct copying data from one file descriptor to another

https://ubiq.co/tech-blog/disable-nginx-cache/

##### NGINX Content Caching

proxy_cache
https://medium.com/tech-it-out/massively-scalable-content-caching-with-nginx-d607ec4024af
https://docs.nginx.com/nginx/admin-guide/content-cache/content-caching/

##### ETag

Default:    etag on;

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

# HTTP caching
=======================================================================================================================
Versioning -    This approach—including a dynamic value into the file name—is called versioning.
Versioning is a common practice, and I recommend enabling it in your app.

https://http.dev/headers#caching

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

# HTTP headers
=======================================================================================================================

[Expires]  We can set the Expires header only in HTTP responses.
The value of Expires is a timestamp that denotes the point in time
after which a cache should consider the response stale.
Notably, caches favor the Cache-Control header with the max-age directive over Expires.

[ETag] An entity tag (ETag) is a value that is included in a HTTP header response that represents the current state of a resource.

The ETag mechanism supports both strong validation and weak validation
"123456789"   – A strong ETag validator
W/"123456789" – A weak ETag validator

[Last-Modified] The Last-Modified response HTTP header contains a date and time when the origin server believes the resource was last modified. 
It is used as a validator to determine if the resource is the same as the previously stored one.

[Age] The HTTP Age header is used to indicate the number of seconds that an object has been in a proxy cache.

[Cache-Control] The HTTP Cache-Control header is used for both HTTP requests and HTTP responses. 
It is responsible for holding directives related to controlling caches for clients and intermediaries.
https://http.dev/cache-control

* public
* no-store
* no-cache
* immutable

* max-age
* s-maxage
* must-revalidate 
* proxy-revalidate 

[Pragma] The HTTP Pragma header has different effects that are implementation-specific and is not included in the HTTP specification. 
However, it can be used for backward compatibility with HTTP/1.0 caches that do not have a HTTP Cache-Control HTTP/1.1 header.

# HTTP request conditional

https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/If-None-Match

[If-Modified-Since] The If-Modified-Since request HTTP header makes the request conditional: 
the server sends back the requested resource, with a 200 status, 
only if it has been last modified after the given date. 
If the resource has not been modified since, the response is a 304 without any body

[If-Unmodified-Since] The HyperText Transfer Protocol (HTTP) If-Unmodified-Since request header makes the request for the resource conditional: 
the server will send the requested resource or accept it in the case of a POST or another non-safe method 
only if the resource has not been modified after the date specified by this HTTP header

[If-Match] The If-Match HTTP request header makes a request conditional.

A server will only return requested resources for GET and HEAD methods, or upload resource for PUT and other non-safe methods,
if the resource matches one of the listed ETag values.
If the conditional does not match then the 412 (Precondition Failed) response is returned.

[If-None-Match] The If-None-Match HTTP request header makes the request conditional.
For GET and HEAD methods, the server will return the requested resource, with a 200 status,
only if it doesn't have an ETag matching the given ones.
For other methods, the request will be processed only if the eventually existing resource's ETag doesn't match any of the values liste

# SCP
=======================================================================================================================

scp [options] [source] [destination]

https://www.makeuseof.com/scp-command-in-linux/

-p      Preserves modification times, access times, and file mode bits from the source file.

#### How to disable SSL verification for proxied host ?
https://github.com/NginxProxyManager/nginx-proxy-manager/discussions/3332
https://192.168.56.2/

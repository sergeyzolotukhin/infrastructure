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

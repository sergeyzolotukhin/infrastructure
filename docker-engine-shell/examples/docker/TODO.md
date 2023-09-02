### How we profile docker build time ?
https://docs.docker.com/build/building/opentelemetry/

#### Build cache
https://docs.docker.com/build/cache/backends/
https://iximiuz.com/en/posts/you-need-containers-to-build-an-image/
* How to look in build cache
https://stackoverflow.com/questions/62834806/docker-buildkit-cache-location-size-and-id

--import-cache
--export-cache
--cache-to
--cache-from

### Open questions:
* What is a buildx vs buildkit?
  BuildKit is a toolkit for converting source code to build artifacts in an efficient, expressive and repeatable manner.
  buildx is a Docker CLI plugin for extended build capabilities with BuildKit.

* Difference between --cache-to/from and --mount type=cache in docker buildx build ?
  https://stackoverflow.com/questions/76351391/difference-between-cache-to-from-and-mount-type-cache-in-docker-buildx-build
* 
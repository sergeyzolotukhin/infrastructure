### How we profile docker build time ?
https://docs.docker.com/build/building/opentelemetry/

#### Build cache
https://docs.docker.com/build/cache/backends/
* How to look in build cache
https://stackoverflow.com/questions/62834806/docker-buildkit-cache-location-size-and-id

--import-cache
--export-cache
--cache-to
--cache-from

### Open questions:
* What is a buildx vs buildkit?
* Difference between --cache-to/from and --mount type=cache in docker buildx build ?
  https://stackoverflow.com/questions/76351391/difference-between-cache-to-from-and-mount-type-cache-in-docker-buildx-build
* 
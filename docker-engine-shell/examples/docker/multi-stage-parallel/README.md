How to skip stages from multi-stage docker build

We should run this example with the BuildKit is enabled

cd /vagrant/examples/docker/multi-stage-parallel
DOCKER_BUILDKIT=0 docker build --rm --no-cache  .
DOCKER_BUILDKIT=1 docker build --rm --no-cache  .

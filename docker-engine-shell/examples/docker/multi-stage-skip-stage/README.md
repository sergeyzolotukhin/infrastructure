How to skip stages from multi-stage docker build

We should run this example with the BuildKit is enabled

cd /vagrant/examples/docker/multi-stage-skip-stage
DOCKER_BUILDKIT=1 docker build --build-arg APP_ENV=prod .

### How to hide output
DOCKER_BUILDKIT=1 docker build --quiet --build-arg APP_ENV=prod .
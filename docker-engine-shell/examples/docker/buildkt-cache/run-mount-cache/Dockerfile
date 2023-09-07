FROM alpine

ARG UBUNTU_VERSION="undefine-1"
ARG CUDA_VERSION="undefine-2"

#ENV ENV_CUDA_VERSION=${CUDA_VERSION}

COPY execute.sh ./execute.sh

RUN --mount=type=cache,target=/mnt ./execute.sh

CMD ["echo", "End"]
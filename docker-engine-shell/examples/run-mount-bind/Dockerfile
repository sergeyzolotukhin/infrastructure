FROM scratch as local_repo

FROM alpine as base

ARG UBUNTU_VERSION="undefine-1"
ARG CUDA_VERSION="undefine-2"

#ENV ENV_CUDA_VERSION=${CUDA_VERSION}

COPY execute.sh ./execute.sh

RUN --mount=type=bind,from=local_repo,rw,target=/mnt ./execute.sh

FROM base as child

ARG UBUNTU_VERSION="undefine-1"
ARG CUDA_VERSION="undefine-2"

COPY second-execute.sh ./second-execute.sh

RUN --mount=type=bind,from=local_repo,rw,target=/mnt ./second-execute.sh

CMD ["echo", "End"]
FROM alpine

ARG UBUNTU_VERSION="undefine-1"
ARG CUDA_VERSION="undefine-2"

#ENV ENV_CUDA_VERSION=${CUDA_VERSION}

COPY local-execute.sh ./local-execute.sh

RUN mkdir /local-mnt
RUN --mount=type=cache,target=/local-mnt ./local-execute.sh

CMD ["echo", "End"]
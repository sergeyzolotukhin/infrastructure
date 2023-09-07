FROM alpine as base

ARG UBUNTU_VERSION="undefine-1"
ARG CUDA_VERSION="undefine-2"

#ENV ENV_CUDA_VERSION=${CUDA_VERSION}

COPY ./execute.sh ./execute.sh

RUN --mount=type=tmpfs,target=/mnt ./execute.sh

FROM base as child

ARG UBUNTU_VERSION="undefine-1"
ARG CUDA_VERSION="undefine-2"

COPY ./second-execute.sh ./second-execute.sh
COPY ./third-execute.sh ./third-execute.sh

#RUN ./second-execute.sh
RUN --mount=type=tmpfs,target=/mnt ./second-execute.sh
RUN --mount=type=tmpfs,target=/mnt ./third-execute.sh

CMD ["echo", "End"]
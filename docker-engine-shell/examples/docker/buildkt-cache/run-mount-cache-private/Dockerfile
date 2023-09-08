FROM alpine as base

ARG CUDA_VERSION="undefine-2"
ARG TEST_NAME="undefine"

ENV TEST_NAME=${TEST_NAME}

COPY ./execute-01.sh ./execute-01.sh

RUN --mount=type=cache,sharing=private,id=private-cache-${TEST_NAME},target=/mnt ./execute-01.sh

FROM base as child

ARG CUDA_VERSION="undefine-2"
ARG TEST_NAME="undefine"

ENV TEST_NAME=${TEST_NAME}

COPY ./execute-02.sh ./execute-02.sh
COPY ./execute-03.sh ./execute-03.sh

#RUN ./second-execute.sh
RUN --mount=type=cache,sharing=private,id=private-cache-${TEST_NAME},target=/mnt ./execute-02.sh
RUN --mount=type=cache,sharing=private,id=private-cache-${TEST_NAME},target=/mnt ./execute-03.sh

CMD ["echo", "End"]
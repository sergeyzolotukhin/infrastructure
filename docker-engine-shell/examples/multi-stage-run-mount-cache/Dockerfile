FROM alpine as base

ARG CURRENT_DATE

COPY execute.sh ./execute.sh

RUN --mount=type=cache,id=mnt,target=/mnt ./execute.sh $CURRENT_DATE

FROM base as child

ARG CURRENT_DATE

COPY second-execute.sh ./second-execute.sh

RUN --mount=type=cache,id=mnt,target=/mnt /second-execute.sh $CURRENT_DATE

CMD ["echo", "End"]
FROM alpine

ARG CURRENT_DATE='No data'

COPY execute.sh ./execute.sh

RUN --mount=type=cache,target=/mnt ./execute.sh

CMD ["echo", "End"]
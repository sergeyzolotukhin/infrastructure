FROM alpine as base
ARG BASE_ARG_1
ARG BASE_ARG_2

ARG RESULT=${BASE_ARG_1:-${BASE_ARG_2:-unset_or_empty}}

RUN echo "unset_or_empty: RESULT: [${RESULT}]"

CMD ["echo", "Child running"]
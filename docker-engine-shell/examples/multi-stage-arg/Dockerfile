FROM alpine as base
ARG BASE_ARG='Data from base image'
RUN echo "base: BASE_ARG: [${BASE_ARG}]"

FROM base as child
RUN echo "child: BASE_ARG: [${BASE_ARG}]"

CMD ["echo", "Child running"]
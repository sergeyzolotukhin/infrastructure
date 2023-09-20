FROM alpine as base
ARG CURRENT_DATE='No data'

COPY execute.sh ./execute.sh

RUN ./execute.sh ${CURRENT_DATE}

CMD ["echo", "Done"]
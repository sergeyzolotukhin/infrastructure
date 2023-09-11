FROM alpine as base

ARG CURRENT_DATE

COPY ./data.pdf /mnt/data.pdf
COPY execute.sh ./execute.sh

RUN ./execute.sh $CURRENT_DATE

FROM base as child

ARG CURRENT_DATE

COPY second-execute.sh ./second-execute.sh
COPY --from=base /mnt/data.pdf /mnt_2/data.pdf

RUN ./second-execute.sh $CURRENT_DATE

CMD ["echo", "End"]
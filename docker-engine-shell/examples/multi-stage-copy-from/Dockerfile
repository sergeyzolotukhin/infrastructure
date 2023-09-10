FROM alpine as base
COPY data /data/
RUN apk add --no-interactive tree
#RUN tree ./data

RUN mkdir ./data_txt
RUN cd ./data/ && find ./ -name '*.txt' -print0 | xargs -0 cp --parents -t ../data_txt
#RUN tree ./data_txt

FROM alpine as prod-preinstall
RUN mkdir ./data_2
COPY --from=base /data_txt ./data_2
RUN tree ./data_2

CMD ["echo", "Hello StackOverflow second!"]
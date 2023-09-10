FROM alpine as base
RUN echo "running BASE commands"

FROM base as first-branch
COPY first.txt /src/first.txt
#RUN  ls -l /src
#RUN cat /src/first.txt
RUN echo "running first branch commands" && sleep 4

# Building the Dev image
FROM base as second-branch
COPY second.txt /src/second.txt
#RUN ls -l /src
#RUN cat /src/second.txt
RUN echo "running second branch commands" && sleep 4

FROM alpine as final
COPY --from=first-branch /src/first.txt /src/first.txt
COPY --from=second-branch /src/second.txt /src/second.txt
#RUN ls -l /src
#RUN cat /src/first.txt
#RUN cat /src/second.txt
RUN echo "running final commands"

CMD ["echo", "End"]
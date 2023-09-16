FROM ubuntu:18.04 as base

SHELL ["/bin/bash", "-c"]

COPY ./test.txt /sz/test.txt

RUN ls -l /sz

CMD ["echo", "Child running"]
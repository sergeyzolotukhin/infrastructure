# Defining environment
ARG APP_ENV=dev

# Building the base image
FROM alpine as base
RUN echo "running BASE commands"

# Building de pre-install Prod image
FROM base as prod-preinstall
RUN echo "running PROD pre-install commands"

# Building the Dev image
FROM base as dev-preinstall
RUN echo "running DEV pre-install commands"

# Installing the app files
FROM ${APP_ENV}-preinstall as install
RUN echo "running install commands"

FROM install as prod-postinstall
RUN echo "running PROD post-install commands"

FROM install as dev-postinstall
RUN echo "running DEV post-install commands"

FROM ${APP_ENV}-postinstall as final
RUN echo "running final commands"

CMD ["echo", "Hello StackOverflow second!"]
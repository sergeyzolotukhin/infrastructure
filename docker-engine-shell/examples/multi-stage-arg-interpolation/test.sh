#!/bin/sh

clear

# https://docs.docker.com/compose/compose-file/12-interpolation/

echo "================================================================================================================"
echo --build-arg BASE_ARG_1="1"
echo --build-arg BASE_ARG_2='2'
echo "================================================================================================================"

docker build \
  --progress=plain \
  --target base \
  --build-arg BASE_ARG_1="1" \
  --build-arg BASE_ARG_2='2' \
  --no-cache \
  .

echo "================================================================================================================"
echo --build-arg BASE_ARG_1="1"
echo "================================================================================================================"

docker build \
  --progress=plain \
  --target base \
  --build-arg BASE_ARG_1="1" \
  --no-cache \
  .

echo "================================================================================================================"
echo --build-arg BASE_ARG_2='2'
echo "================================================================================================================"

docker build \
  --progress=plain \
  --target base \
  --build-arg BASE_ARG_2='2' \
  --no-cache \
  .

echo "================================================================================================================"
echo No agrs
echo "================================================================================================================"

docker build \
  --progress=plain \
  --target base \
  --no-cache \
  .

echo "================================================================================================================"
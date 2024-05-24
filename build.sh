#!/bin/bash

ROOT=puppet/pdk
# ROOT=bigbird7821/pdk5
# docker buildx build --platform linux/arm64 -t ${ROOT}:latest -t ${ROOT}:3.2.0.1 -t ${ROOT}:nightly -f Dockerfile.arm64 --push .
# DOCKER_CLI_EXPERIMENTALocker buildx build --platform linux/amd64 -t ${ROOT}:latest -t ${ROOT}:3.2.0.1 -t ${ROOT}:nightly   -f Dockerfile.amd64 --push .


# docker run -it -v $(pwd):/root ${ROOT}:3.2.0.1 --version

docker buildx build --platform linux/arm64,linux/amd64 -t ${ROOT}:latest -t ${ROOT}:3.2.0.1 -t ${ROOT}:nightly -f Dockerfile.multi --push .
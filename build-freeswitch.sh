#!/bin/bash
PLATFORM=$1
VER=$2

if [[ -z $1 ]]; then
    PLATFORM=linux/amd64
#    PLATFORM=linux/arm/v7,linux/amd64
fi

if [[ -z $2 ]]; then
    VER=latest
fi

pushd freeswitch
docker buildx build --platform ${PLATFORM} \
 --push -t jbuchbinder/freeswitch:${VER} .
popd

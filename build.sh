#!/bin/bash

set -x

DIRNAME=${0%/*}
BASENAME="${0##*/}"

cd "$DIRNAME"

OWNER=damian-barsotti

VER=":v18.13.0"

IMAGE=kedro-docker

#EXTRA_ARGS="--no-cache"

docker build --tag $OWNER/$IMAGE$VER -f "$DIRNAME"/dockerfiles/Dockerfile --progress plain $EXTRA_ARGS "$DIRNAME"/context

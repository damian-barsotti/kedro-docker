#!/bin/sh

set -x

DIRNAME=${0%/*}
BASENAME="${0##*/}"

GIT_DIR="$DIRNAME"/../poc-facturador

OWNER=damian-barsotti

VER=":v18.13.0"

IMAGE=kedro-docker

exec docker run -it --rm \
    -v "$GIT_DIR":/home/kedro/work \
    -p 4141:4141 \
    $OWNER/$IMAGE$VER start.sh


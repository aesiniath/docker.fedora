#!/bin/bash

set -e

if [ ! -f .stamp ] ; then
	date -u +%FT%TZ > .stamp
fi

docker build \
	--tag="docker.io/oprdyn/fedora:29" \
	--network="proxy" \
	.

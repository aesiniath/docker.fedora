#!/bin/bash -xe

if [ ! -f .stamp ] ; then
	date -u +%FT%TZ > .stamp
fi

docker build \
	--tag="localhost/afcowie/fedora:27" \
	--network="proxy" \
	.

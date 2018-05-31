#!/bin/bash

set -e

if [ ! -f .stamp ] ; then
	date -u +%FT%TZ > .stamp
fi

docker build \
	--tag="localhost/afcowie/fedora:28" \
	--network="proxy" \
	.

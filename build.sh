#!/bin/bash

docker build \
	--tag="docker.io/oprdyn/fedora:29" \
	--network="proxy" \
	.

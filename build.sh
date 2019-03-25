#!/bin/bash

docker pull docker.io/library/fedora:29

docker build \
	--tag="docker.io/oprdyn/fedora:29" \
	--network="proxy" \
	.

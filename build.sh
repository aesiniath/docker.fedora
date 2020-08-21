#!/bin/bash

podman pull docker.io/library/fedora:29

podman build \
	--tag="docker.io/oprdyn/fedora:29" \
	--network="proxy" \
	.

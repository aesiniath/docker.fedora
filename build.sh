#!/bin/bash

podman pull docker.io/library/fedora:32

podman build \
	--tag="docker.io/aesiniath/fedora:32" \
	.

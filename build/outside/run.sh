#!/bin/sh
set -x
set -e

#
# Install a base system
#

initialize () {
	if [ -f .stamp/initialize ] ; then
		return
	fi
	if [ ! -d .stamp ] ; then
		mkdir .stamp
	fi
	docker pull docker.io/fedora:27
	touch .stamp/initialize
}


baseline () {
	if [ .stamp/baseline -nt .stamp/initialize ] ; then
		return
	fi
	docker create \
		--volume=${PWD}/build/inside:/mnt:z \
		--volume=fedora-package-cache:/var/cache:z \
		--tty=true \
		fedora:27 > .stamp/running /mnt/baseline.sh
	ID=`cat .stamp/running`
	docker cp files/ ${ID}:/
	docker start ${ID}
	docker attach ${ID}
	docker commit ${ID} afcowie/fedora:27
	docker rm ${ID}
	touch .stamp/baseline
}

initialize
baseline

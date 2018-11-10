FROM docker.io/library/fedora:29
COPY .stamp /

# copy in *.repo containing reference to local proxy repository

COPY files/etc/yum.repos.d/. /etc/yum.repos.d
COPY files/root/. /root

# sync metadata and bring base packages up-to-date

RUN dnf update -y && dnf clean all


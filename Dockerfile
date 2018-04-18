FROM docker.io/library/fedora:27

COPY files/. /

RUN dnf update -y


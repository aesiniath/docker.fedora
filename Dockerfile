FROM fedora:27

COPY files/. /

RUN dnf update -y


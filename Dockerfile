FROM fedora:27

ADD files/ /

RUN dnf update -y


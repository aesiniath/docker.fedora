FROM fedora:27

ADD root/dot-bashrc /root/.bashrc

RUN dnf update -y


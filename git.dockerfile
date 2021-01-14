FROM ubuntu:focal
RUN apt-get -qq update -y && \
    apt-get -qq install -y \
    git
RUN adduser --disabled-password --gecos "" --uid 123 --gid 30 --shell /bin/bash jenkins

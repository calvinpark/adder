FROM ubuntu:focal
RUN apt-get -qq update -y && \
    apt-get -qq install -y \
    git

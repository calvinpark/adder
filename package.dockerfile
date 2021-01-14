FROM ubuntu:focal
RUN apt-get -qq update -y && apt-get -qq install -y curl python3
RUN curl -fsSL https://get.docker.com -o get-docker.sh | sh
COPY adder.py /

FROM ubuntu:focal
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN apt-get -qq update -y && apt-get -qq install -y python3
COPY adder.py /
ENTRYPOINT ["python", "/adder.py"]

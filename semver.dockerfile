FROM ubuntu:focal

RUN apt-get update && \
    apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

ADD https://github.com/markchalloner/git-semver/raw/3.0.1/git-semver.sh /bin/git-semver
RUN chmod 755 /bin/git-semver

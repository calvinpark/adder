#!/bin/bash
set -e

VERSION=${1:-latest}
docker build -f package.dockerfile -t calvinpark/adder:${VERSION} .

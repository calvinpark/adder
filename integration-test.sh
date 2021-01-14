#!/bin/bash
set -e

FIRST=$1
SECOND=$2
ANSWER=$3
VERSION=${4:-latest}

SUM=$(docker run calvinpark/adder:${VERSION} python3 adder.py ${FIRST} ${SECOND})

if [[ ${SUM} == "${ANSWER}" ]]; then
    echo "Integration test success"
else
    echo "[ERROR] ${FIRST} + ${SECOND} returned ${SUM}, not ${ANSWER}" >&2
    exit 1
fi

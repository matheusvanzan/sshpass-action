#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"


HOST=$1
USERNAME=$2
PASSWORD=$3
RUN=$4

echo "HOST $HOST"
echo "USERNAME $USERNAME"
echo "PASSWORD $PASSWORD"
echo "RUN $RUN"

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

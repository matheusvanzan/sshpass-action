#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

HOST=$1
USERNAME=$2     
RUN=$4
export SSHPASS=$3

CMD="${RUN/$'\n'/' && '}"
sshpass -e ssh -o StrictHostKeyChecking=no $USERNAME@$HOST "$CMD"

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
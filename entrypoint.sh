#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

echo "Args: $@"

echo "host: ${HOST}"
env

# HOST=$1
# USERNAME=$2     
# export SSHPASS=$3
# RUN=$4
# PORT=$5

# if [ -z "$PORT" ] 
# then
#     PORT=22
# fi

CMD="${RUN/$'\n'/' && '}"
# sshpass -e ssh -o StrictHostKeyChecking=no -p $PORT $USERNAME@$HOST "$CMD"

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
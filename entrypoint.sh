#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

# Available env
# echo "INPUT_HOST: ${INPUT_HOST}"
# echo "INPUT_PORT: ${INPUT_PORT}"
# echo "INPUT_USER: ${INPUT_USER}"
# echo "INPUT_PASS: ${INPUT_PASS}"
# echo "INPUT_KEY: ${INPUT_KEY}"
# echo "INPUT_RUN: ${INPUT_RUN}"

HOST=${INPUT_HOST}
PORT=${INPUT_PORT}
USER=${INPUT_USER}
PASS=${INPUT_PASS}
KEY=${INPUT_KEY}
RUN=${INPUT_RUN}
CMD="${RUN/$'\n'/' && '}"

if [ -z "$KEY" ] # Password
then
    echo "Using password"
    export SSHPASS=$PASS
    sshpass -e ssh -o StrictHostKeyChecking=no -p $PORT $USER@$HOST "$CMD"

else # Certificate
    echo "Using certificate"
    mkdir "$HOME/.ssh"
    echo "$KEY" > "$HOME/.ssh/id_rsa"
    chmod 400 "$HOME/.ssh/id_rsa"
    sshpass ssh -o StrictHostKeyChecking=no -p $PORT $USER@$HOST "$CMD"
fi

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
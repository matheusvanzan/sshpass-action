#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

# Available env
echo "INPUT_HOST: ${INPUT_HOST}"
echo "INPUT_USERNAME: ${INPUT_USERNAME}"
echo "INPUT_PASSWORD: ${INPUT_PASSWORD}"
echo "INPUT_RUN: ${INPUT_RUN}"

HOST=${INPUT_HOST}
USERNAME=${INPUT_USERNAME}
export SSHPASS=${INPUT_PASSWORD}

RUN=${INPUT_RUN}
CMD="${RUN/$'\n'/' && '}"
sshpass -e ssh -o StrictHostKeyChecking=no $USERNAME@$HOST "$CMD"

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
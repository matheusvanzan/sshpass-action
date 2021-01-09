#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

# Available env
# INPUT_HOST
# INPUT_USER
# INPUT_PASS
# INPUT_RUN

echo "INPUT_HOST: ${INPUT_HOST}"
echo "INPUT_USER: ${INPUT_USER}"
echo "INPUT_PASS: ${INPUT_PASS}"
echo "INPUT_RUN: ${INPUT_RUN}"

HOST=${INPUT_HOST}
USER=${INPUT_USER}
export SSHPASS=${INPUT_PASS}

RUN=${INPUT_RUN}
CMD="${RUN/$'\n'/' && '}"
sshpass -e ssh -o StrictHostKeyChecking=no $USER@$HOST "$CMD"

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
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

CMD="${INPUT_RUN/$'\n'/' && '}"

if [ -z "$INPUT_KEY" ] # Password
then
    echo "Using password"
    export SSHPASS=$PASS
    sshpass -e ssh -o StrictHostKeyChecking=no -p $INPUT_PORT $INPUT_USER@$INPUT_HOST "$CMD"

else # Private key
    echo "Using private key"
    mkdir "$HOME/.ssh"

    echo "$INPUT_KEY" > "$HOME/.ssh/id_rsa"
    chmod 400 "$HOME/.ssh/id_rsa"

    echo "Host *" > "$HOME/.ssh/config"
    echo "  AddKeysToAgent yes" >> "$HOME/.ssh/config"
    echo "  IdentityFile ~/.ssh/id_rsa" >> "$HOME/.ssh/config"

    cat "$HOME/.ssh/config"

    ls -lha "$HOME/.ssh/"
    sshpass ssh -v -o StrictHostKeyChecking=no -p $INPUT_PORT $INPUT_USER@$INPUT_HOST "$CMD"
fi

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
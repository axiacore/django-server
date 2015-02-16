#!/bin/bash

# Generating ssh keys
cat /dev/zero | ssh-keygen -t rsa -b 8192 -f /opt/deploy/.ssh/id_rsa -q -N ""

# Adds the new key as deployment
curl https://raw.githubusercontent.com/AxiaCore/public-keys/master/known_hosts > /opt/deploy/.ssh/known_hosts 2>/dev/null
REPO="https://bitbucket.org/api/1.0/repositories/axiacore/$REPOSLUG/deploy-keys"
PUB_KEY=`cat /opt/deploy/.ssh/id_rsa.pub`
curl -v --request POST --user $USERNAME:$PASSWORD \
  $REPO --header "Content-Type: application/json" \
  --header "Accept: application/json" \
  -d "{\"key\": \"$PUB_KEY\"}" 2>/dev/null

mkdir /opt/deploy/{{ pillar['project_name'] }}_app/ws

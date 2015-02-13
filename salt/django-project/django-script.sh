#!/bin/bash

# Generating ssh keys
cat /dev/zero | ssh-keygen -t rsa -b 8192 -f /opt/deploy/.ssh/id_rsa

# Publishing ssh keys
CURLRESULT=$(curl -v --request POST --user $USERNAME:$PASSWORD \
  $REPO --header "Content-Type: application/json" --header "Accept: application/json" -d "{\"key\": \"`cat /opt/deploy/.ssh/id_rsa.pub`\"}" 2>/dev/null)

#!/bin/bash
USERNAME=$1
SSH_KEY=$2
cd /home/$USERNAME/.ssh
sudo echo $SSH_KEY > authorized_keys9

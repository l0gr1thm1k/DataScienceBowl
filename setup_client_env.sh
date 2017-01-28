#!/bin/bash

############################################################
# This script installs the spacecore API which include     #
# tools to facilitate fast transfer of files and execution #
# of jobs on an AWS instance. install this on your client  #
############################################################

pip3 install boto3 json


mkdir /opt/spacecore
git clone https://github.com/npielawski/spacecore.git /opt/spacecore

~/.bashrc >> "alias spacecore='/opt/spacecore/spacecore.sh'"
source ~/.bashrc

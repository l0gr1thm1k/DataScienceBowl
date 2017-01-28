#!/bin/bash

#################################################################
# install packages and dependencies required to clean the data  #
# and train/test our models                                     #
#################################################################

sudo apt-get upgrade
apt-get install python3-tk emacs pz7ip pzip-full

# install all pip-installable dependencies
pip3 install -r requirements.txt

# get the current copy of the project
mkdir ~/DataScienceBowl
git clone https://github.com/l0gr1thm1k/DataScienceBowl.git ~/DatScienceBowl


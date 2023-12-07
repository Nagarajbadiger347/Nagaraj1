#!/bin/bash

################
#Author: Nagaraj
#Date: 01/10/2023
#
#This is the example script which outputs the node Health
#
#################

set -x   # debug mode shows the command as well as output
set -e   # exit the script when there is an error
set -o   # when you are using pipeline which exit the script when pipe fail

ps -ef | grep "<name>" | awk -F" " '{print $2}' # to get pid of name process

df -h

free -g

nproc

curl < url of log file > | grep error # to acess the log file and get error 

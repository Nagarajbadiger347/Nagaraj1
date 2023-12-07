#!/bin/bash

###################
# Author: Nagaraj
# Date: 05/10/2023
#
# Script that track aws resource usage 
# useing  cronjob to run this job everyday
# 
###################

set -x # debug mode
touch resourcetracker
#listing ec2 instance id 
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID' >> resourcetracker

# listing aws lamda 
aws lamda list-functions >> resourcetracker

#listing s3 buckets
aws s3 ls >> resourcetracker

#listing IAM user
aws iam list-users







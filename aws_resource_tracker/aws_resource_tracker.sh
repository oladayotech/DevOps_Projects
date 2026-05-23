#!/bin/bash

###################################################

# Author: Oladayo
# Date: 22/05/2026
#
# Version: v1
#
# This script will report the AWS resource usage
####################################################

set -x o


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List S3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> resourceTracker

# list EC2 Instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# list Lambda
echo "Print list of lamda functions"
aws lambda list-functions >> resourceTracker

#list IAM users
echo "Print list of IAM users"
aws iam list-users >> resourceTracker

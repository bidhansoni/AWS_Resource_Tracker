#! /bin/bash
echo "Print s3 buckets"
aws s3 list

echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '. Reservations[].Instances[].InstanceID[]'

echo "Print Lamda Functions"
aws lamda list-functions

echo "Print List of IAM users"
aws iam list-users | jq '.Users[].UserName'


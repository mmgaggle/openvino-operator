#!/bin/bash

AWS_ACCESS_KEY_ID=$(echo -n $AWS_ACCESS_KEY_ID | base64)
AWS_SECRET_ACCESS_KEY=$(echo -n $AWS_SECRET_ACCESS_KEY | base64)

echo "apiVersion: v1
kind: Secret
metadata:
  name: s3-auth
type: kubernetes.io/opaque
data:
  AWS_ACCESS_KEY_ID: ${AWS_ACCESS_KEY_ID}
  AWS_SECRET_ACCESS_KEY: ${AWS_SECRET_ACCESS_KEY}" | kubectl apply -f - 

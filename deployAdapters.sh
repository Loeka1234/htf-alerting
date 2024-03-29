#!/bin/bash
export STACK_NAME=<underdog>-htf-trollalerting-adapters
<<<<<<< HEAD
export MY_REGION=eu-west-1
=======
export MY_REGION=eu-central-1
>>>>>>> 73b65ca666232e4b5877ad387c7b6f3d01d3d0d0
export MY_DEV_BUCKET=htf-deploymentbucket

# Package new cloudformation package
aws cloudformation package --template templates/event-source-adapters.yaml --s3-bucket $MY_DEV_BUCKET --output-template export-event-source-adapters.yaml --region $MY_REGION
# Deploy 
sam deploy --region $MY_REGION --template-file export-event-source-adapters.yaml --stack-name $STACK_NAME --capabilities CAPABILITY_NAMED_IAM --parameter-overrides Stage=dev

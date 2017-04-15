#!/bin/bash

dotnet restore
dotnet lambda package
BUILD_VERSION=`git log --pretty=format:'%h' -n 1`
aws cloudformation package --template-file app_def.yml --output-template-file serverless-$BUILD_VERSION.yml --s3-bucket fitness-app-workouts-code
#aws cloudformation deploy --template-file serverless-output.yml --stack-name Workouts --capabilities CAPABILITY_IAM


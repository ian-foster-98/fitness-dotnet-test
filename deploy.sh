#!/bin/bash

dotnet restore
dotnet lambda package
aws cloudformation package --template-file app_def.yml --output-template-file serverless-output.yml --s3-bucket fitness-app-workouts-code
#aws cloudformation deploy --template-file serverless-output.yml --stack-name Workouts --capabilities CAPABILITY_IAM


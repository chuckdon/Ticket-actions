#!/bin/bash

# Set up necessary environment variables
export AWS_ACCESS_KEY_ID=$secrets.SECRET_KEY
export AWS_SECRET_ACCESS_KEY=$secrets.ACCESS_KEY
export TERRAFORM_CLI_PATH=$TERRAFORM_CLI_PATH
export GITHUB_TOKEN=$MY_TOKEN

# Run semantic-release
npx semantic-release


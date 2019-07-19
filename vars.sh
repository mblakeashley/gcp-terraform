#!/bin/bash

export TF_PROJECT=skilled-snow-247114
export TF_CREDS="$(pwd)/creds/serviceaccount.json"
export GOOGLE_APPLICATION_CREDENTIALS=${TF_CREDS}
export GOOGLE_PROJECT=${TF_PROJECT}

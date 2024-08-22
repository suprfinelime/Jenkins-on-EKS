#!/bin/bash
terraform init
terraform apply -auto-approve
export CLUSTER_NAME=$(terraform output -raw cluster_name)
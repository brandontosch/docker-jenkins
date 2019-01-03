#!/bin/sh

docker rmi jenkins-agent-terraform
#docker rmi jenkins-agent-azurecli-vault
#docker rmi jenkins-agent-azurecli-packer
#docker rmi jenkins-agent-azurecli
docker rmi jenkins-agent-git
docker rmi jenkins-agent-alpine

docker build -t jenkins-agent-alpine ../agents/alpine/
docker build -t jenkins-agent-git ../agents/git/
docker build -t jenkins-agent-ecr ../agents/ecr/
#docker build -t jenkins-agent-azurecli ../agents/azurecli/
#docker build -t jenkins-agent-azurecli-packer ../agents/azurecli-packer/
#docker build -t jenkins-agent-azurecli-vault ../agents/azurecli-vault/
docker build -t jenkins-agent-terraform ../agents/terraform/

docker images

#!/bin/sh

docker rmi jenkins-slave-terraform
docker rmi jenkins-slave-azurecli-vault
docker rmi jenkins-slave-azurecli-packer
docker rmi jenkins-slave-azurecli
docker rmi jenkins-slave-git
docker rmi jenkins-slave-alpine

docker build -t jenkins-slave-alpine ../agents/alpine/
docker build -t jenkins-slave-git ../agents/git/
docker build -t jenkins-slave-azurecli ../agents/azurecli/
docker build -t jenkins-slave-azurecli-packer ../agents/azurecli-packer/
docker build -t jenkins-slave-azurecli-vault ../agents/azurecli-vault/
docker build -t jenkins-slave-terraform ../agents/terraform/

docker images

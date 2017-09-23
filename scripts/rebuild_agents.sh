#!/bin/sh

docker rmi jenkins-slave-terraform
docker rmi jenkins-slave-packer-azure
docker rmi jenkins-slave-git
docker rmi jenkins-slave-alpine

docker build -t jenkins-slave-alpine ../agents/alpine/
docker build -t jenkins-slave-git ../agents/git/
docker build -t jenkins-slave-packer-azure ../agents/package-azure/
docker build -t jenkins-slave-terraform ../agents/terraform/

docker images

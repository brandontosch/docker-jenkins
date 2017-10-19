#!/bin/sh
PACKER_VERSION=1.1.0
TF_VERSION=0.10.6
VAULT_VERSION=0.8.3

../agents/azurecli-packer/tools/download.sh $PACKER_VERSION
../agents/azurecli-vault/tools/download.sh $VAULT_VERSION
../agents/terraform/tools/download.sh $TF_VERSION
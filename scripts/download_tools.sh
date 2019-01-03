#!/bin/sh
PACKER_VERSION=1.3.2
TF_VERSION=0.11.10
VAULT_VERSION=0.11.4

../agents/azurecli-packer/tools/download.sh $PACKER_VERSION
../agents/azurecli-vault/tools/download.sh $VAULT_VERSION
../agents/terraform/tools/download.sh $TF_VERSION

#!/bin/sh
PACKER_VERSION=1.1.0
TF_VERSION=0.10.6

../agents/packer-azure/tools/download.sh $PACKER_VERSION
../agents/packer-azure/tools/download.sh $TF_VERSION
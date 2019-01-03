#!/bin/sh
PACKER_VERSION=$1
BASE_DIR=$(dirname "$0")

curl -O $(printf "https://releases.hashicorp.com/packer/%s/packer_%s_linux_amd64.zip" $PACKER_VERSION $PACKER_VERSION)
rm -f $BASE_DIR/packer
unzip $(printf "packer_%s_linux_amd64.zip" $PACKER_VERSION) -d $BASE_DIR/
rm -f $(printf "packer_%s_linux_amd64.zip" $PACKER_VERSION)

$BASE_DIR/packer -v
#!/bin/sh
TF_VERSION=$1
BASE_DIR=$(dirname "$0")

curl -O $(printf "https://releases.hashicorp.com/terraform/%s/terraform_%s_linux_amd64.zip" $TF_VERSION $TF_VERSION)
rm -f $BASE_DIR/tools/terraform
unzip $(printf "terraform_%s_linux_amd64.zip" $TF_VERSION) -d $BASE_DIR/tools/
rm -f $(printf "terraform_%s_linux_amd64.zip" $TF_VERSION)

$BASE_DIR/tools/terraform -v
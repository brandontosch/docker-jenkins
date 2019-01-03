#!/bin/sh
VAULT_VERSION=$1
BASE_DIR=$(dirname "$0")

curl -O $(printf "https://releases.hashicorp.com/vault/%s/vault_%s_linux_amd64.zip" $VAULT_VERSION $VAULT_VERSION)
rm -f $BASE_DIR/vault
unzip $(printf "vault_%s_linux_amd64.zip" $VAULT_VERSION) -d $BASE_DIR/
rm -f $(printf "vault_%s_linux_amd64.zip" $VAULT_VERSION)

$BASE_DIR/vault -v
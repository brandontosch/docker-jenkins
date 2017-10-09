#!/bin/sh

curl -L https://aka.ms/InstallAzureCli > tmp.sh
chmod +x tmp.sh

sed -i 's/XXXX/XXXXXX/' tmp.sh
sed -i 's/ < $_TTY//' tmp.sh

./tmp.sh << EOL
/usr/lib/azurecli
/usr/bin
EOL

rm -f tmp.sh
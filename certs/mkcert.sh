#!/bin/bash

FILENAME="domains.txt"
DOMAINS=$(cat $FILENAME)
CERT_FILE="localhost.crt"
KEY_FILE="localhost.key"
PEM_FILE="localhost.pem"

# for LINE in $LINES
# do
#     echo $LINE
# done

mkcert \
    -cert-file $CERT_FILE \
    -key-file $KEY_FILE \
    -p12-file $PEM_FILE \
    $DOMAINS

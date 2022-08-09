#!/bin/sh

source auth.sh

cc=$(do_client_credentials "$1" "$2")
echo $cc
#!/bin/sh
echo "Introspection at $AS_HOST"
curl -v -X POST \
  -d "refresh_token=$1" \
  -d "grant_type=refresh_token" \
  -d "client_id=$CLIENT_ID" \
  -d "client_secret=$CLIENT_SECRET" \
  "$AS_HOST/token"


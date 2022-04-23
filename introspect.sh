#!/bin/sh
curl -v -X POST \
  -u "$CLIENT_ID:$CLIENT_SECRET" \
  -d "token=$ACCESS_TOKEN" \
  "$AS_HOST/introspect"


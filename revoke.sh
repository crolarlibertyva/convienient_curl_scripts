#!/bin/sh
echo "Revoke at $AS_HOST"
curl -v -X POST \
  -u "$CLIENT_ID:$CLIENT_SECRET" \
  -d "token=$ACCESS_TOKEN" \
  "$AS_HOST/oauth2/revoke"

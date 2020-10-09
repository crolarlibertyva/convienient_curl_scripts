#!/bin/sh
echo "Revoke at $AS_HOST"
curl -v -X DELETE \
  -d "client_id=$CLIENT_ID" \
  -d "email=$OAUTH_USER_EMAIL" \
  -d "token=$ACCESS_TOKEN" \
  "$AS_HOST/grants"

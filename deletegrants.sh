#!/bin/sh
echo "Revoke at $AS_HOST"
echo "email equals $OAUTH_USER_EMAIL"
curl -v -X DELETE \
  -d "client_id=$CLIENT_ID" \
  -d "email=$OAUTH_USER_EMAIL" \
  -d "token=$ACCESS_TOKEN" \
  -H "Content-type: application/x-www-form-urlencoded" \
  "$AS_HOST/grants"

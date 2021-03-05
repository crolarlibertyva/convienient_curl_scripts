#!/bin/sh
echo "User info at $AS_HOST"
curl  \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  "$AS_HOST/userinfo" | jq


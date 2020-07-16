#!/bin/sh
echo "Introspection at $AS_HOST"
curl  \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  "$AS_HOST/userinfo"


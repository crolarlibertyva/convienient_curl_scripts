#!/bin/sh
echo "Claims info at $AS_HOST"
curl  \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  "$AS_HOST/claims"


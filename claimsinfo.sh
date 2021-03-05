#!/bin/sh
echo "Claims info at $AS_HOST"
curl  \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  "http://localhost:7100/oauth2/claims" | jq


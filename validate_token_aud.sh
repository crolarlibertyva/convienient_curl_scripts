#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  http://localhost:8081/auth/v2/validation \
  -H "Authorization: Bearer $1" \
  --data "strict=false" \
  --data-urlencode "aud=$2"
  
  
  

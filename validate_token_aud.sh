#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  http://localhost:3000/internal/auth/v2/validation \
  -H "Authorization: Bearer $1" \
  --data "strict=false" \
  --data-urlencode "aud[]=$2"
  
  
  

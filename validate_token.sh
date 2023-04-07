#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  http://localhost:8081/auth/v3/validation \
  -H "Authorization: Bearer $1" \
  --data-urlencode "aud=api://default"
  
  
  

#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  ${TV_URL}/auth/v2/validation \
  -H "Authorization: Bearer $1" \
  --data-urlencode "aud=api://default" 
  
  
  

#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  http://localhost:8081/auth/sts/v1/exchange \
  -H "Authorization: Bearer $1" \
  --data-urlencode "aud=api://default" 
  
  
  

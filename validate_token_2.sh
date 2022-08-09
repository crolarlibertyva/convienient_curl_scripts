#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  http://localhost:8080/health/v2/validate \
  -H "Authorization: Bearer $1" \
  --data-urlencode "aud=api://default" 
  
  
  

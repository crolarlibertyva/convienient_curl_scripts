#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  ${TV_URL}\
  -H "Authorization: Bearer $1" \
  --data-urlencode "aud=https://sandbox-api.va.gov/services/fhir" 
  
  
  

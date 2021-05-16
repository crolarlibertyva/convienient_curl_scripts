#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  http://localhost:3000/internal/auth/v2/validation \
  -H "Authorization: Bearer $1" \
  --data-urlencode "aud[]=https://sandbox-api.va.gov/services/clinical-fhir"
  
  
  

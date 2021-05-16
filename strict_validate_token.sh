#!/usr/bin/env bash
# Team Pivot!
#
curl -X POST \
  http://localhost:3000/internal/auth/v2/validation \
  -H "Authorization: Bearer $1" \
  --data-urlencode "strict=true" \
  --data-urlencode "aud[]=https://sandbox-api.va.gov/services/clinical-fhirxxx"
  
  
  

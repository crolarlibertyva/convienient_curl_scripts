#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  https://dev-api.va.gov/internal/auth/v2/validation \
  -H "Authorization: Bearer $1" \
  -H "apiKey: $APIKEY" \
  --data-urlencode "aud[]=https://sandbox-api.va.gov/services/clinical-fhir"
  
  
  

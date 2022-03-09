#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  https://staging-api.va.gov/auth/v2/validation \
  -H "Content-type: application/json" \
  -H "Authorization: Bearer $1" \
  --data '{ "aud": [ "https://sandbox-api.va.gov/services/fhir"  }'
  
  
  

#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X \
  -H "Authorization: Bearer $1" \
  -H "apiKey: 9soijK7nGLi0Ul8ZWOBcQ2fYru6U59pP" \
  --data-urlencode "aud=https://sandbox-api.va.gov/services/fhir" \
  ${TV_URL}
  
  
  

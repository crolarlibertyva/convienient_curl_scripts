#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
  https://dev-api.va.gov/internal/auth/v1/validation/v2 \
  -H "Authorization: Bearer $1"
  --data-urlencode "apiKey=c1m7q2mOpDxSFxh5R1UCfovfiR1KAgAm"
  
  

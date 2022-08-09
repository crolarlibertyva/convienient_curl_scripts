#!/usr/bin/env bash
# Team Pivot!
#
curl -v -X POST \
   http://localhost:3000/internal/auth/v2/validation \
  -H "Authorization: Bearer $1" \
  --data-urlencode "apiKey=c1m7q2mOpDxSFxh5R1UCfovfiR1KAgAm"
  
  

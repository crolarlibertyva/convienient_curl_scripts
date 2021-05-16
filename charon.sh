#!/usr/bin/env bash
# Team Pivot!
#
curl -X POST \
  https://blue.lab.lighthouse.va.gov/charon/authorization-status/clinical \
  -H "Authorization: Bearer $1" \
  --data-urlencode "duz=$DUZ"
  --data-urlencode "site=$ST3N"
  
  
  

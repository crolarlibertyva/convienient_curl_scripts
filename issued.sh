#!/bin/sh
curl  \
  -H "authorization: Bearer $ACCESS_TOKEN" \
  "$AS_HOST/issued"


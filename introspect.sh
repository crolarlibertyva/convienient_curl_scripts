#!/bin/sh
echo "Introspection at $AS_HOST"
curl -v -X POST \
  -u "$CLIENT_ID:$CLIENT_SECRET" \
  -d "token=$ACCESS_TOKEN" \
  "$AS_HOST/introspect"


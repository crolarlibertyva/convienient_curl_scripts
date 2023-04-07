#!/bin/sh
curl --location --request POST "$AS_HOST/introspect" \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode "token=$ACCESS_TOKEN" \
--data-urlencode 'token_type_hint=access_token' \
--data-urlencode "client_id=$IAM_CLIENT_ID"
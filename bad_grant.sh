#!/bin/sh
curl -X POST \
    -s \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    -w "%{http_code}" \
    -d "{"client_id": $client_id, "grant_type": $grant_type, "client_secret": $secret}" \
    "$HOST/TOKEN?redirect_uri=$REDIRECT_URI"
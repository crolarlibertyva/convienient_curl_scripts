#!/bin/sh
docker run -i --rm vasdvp/lighthouse-auth-utils:latest \
     auth-cc \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url=https://dev-api.va.gov/oauth2/veteran-letters/system/v1 \
     --scope="letters.read" \
    | jq

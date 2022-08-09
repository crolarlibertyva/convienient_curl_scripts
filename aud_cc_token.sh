#!/bin/sh
docker run --rm vasdvp/lighthouse-auth-utils:latest \
     auth-cc \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url="http://sandbox-api.va.gov/oauth2/health/system/v1" \
     --scope="openid" \
     | jq

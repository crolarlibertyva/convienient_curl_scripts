#!/bin/sh
docker run -i --network container:lighthouse-oauth-proxy-oauth-proxy-1 --rm vasdvp/lighthouse-auth-utils:latest \
     auth-cc \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url=https://dev-api.va.gov/oauth2/veteran-confirmation/system/v1 \
     --scope="enrolled_benefits.read veteran_status.read" \
      | jq

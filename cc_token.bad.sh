#!/bin/sh
docker run -i --network container:lighthouse-oauth-proxy_oauth-proxy_1 --rm vasdvp/lighthouse-auth-utils:latest \
     auth-cc \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url=http://localhost:7100/oauth2/health/system/v1 \
     --scope="launch" \
     --launch="123V456" | jq

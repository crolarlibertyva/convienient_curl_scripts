#!/bin/sh
docker run --network oauth-proxy_default --rm lcauthutils:latest \
     auth-cc \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url=http://oauth-proxy:7100/oauth2/keycloak/v1 \
     --scope="launch/patient patient/Patient.read" \
     --launch=123v456 | jq

#!/bin/sh
docker run --rm vasdvp/lighthouse-auth-utils:latest \
     auth-cc \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url=http://localhost:7100/oauth2/health-insurance/v1 \
     --scope="launch/patient patient/Patient.read" \
     --launch=123v456 | jq

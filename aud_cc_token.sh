#!/bin/sh
docker run --network docker_default lcauthutils --rm lcauthutils:latest \
     auth-cc \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url="http://keycloak:9080/auth/realms/DevIAM" \
     --scope="launch/patient patient/Patient.read" \
     --audience="http://DevIAM/token" \
     --launch=123v456 | jq

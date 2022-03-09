#!/bin/sh
docker run -i --network container:lighthouse-oauth-proxy_oauth-proxy_1 --rm vasdvp/lighthouse-auth-utils:latest \
     auth \
     --user-email=$USER_EMAIL \
     --user-password=$USER_PASSWORD \
     --client-id=$CLIENT_ID \
     --client-secret=$CLIENT_SECRET \
     --authorization-url=http://localhost:7100/oauth2/pgd/v1 \
     --scope="openid launch" \
     --launch="ewogICJwYXRpZW50IjogIjEyMzRWNTY3OCIsCiAgImVuY291bnRlciI6ICI5ODc2LTU0MzItMTAwMCIKfQ==" \
      | jq

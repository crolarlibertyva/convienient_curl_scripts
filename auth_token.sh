#!/bin/sh
npm i
node \
     node_modules/lighthouse-auth-utils/auth.js \
     --user-email=$USER_EMAIL \
     --user-password=$USER_PASSWORD \
     --client-id=$CLIENT_ID \
     --client-secret=$CLIENT_SECRET \
     --authorization-url=$AS_HOST \
     --scope="openid email" \
     --launch="ewogICJwYXRpZW50IjogIjEyMzRWNTY3OCIsCiAgImVuY291bnRlciI6ICI5ODc2LTU0MzItMTAwMCIKfQ==" \
      | jq

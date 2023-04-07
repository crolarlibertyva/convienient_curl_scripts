#!/bin/sh
npm i
node \
     node_modules/lighthouse-auth-utils/auth-cc.js \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url=$AS_HOST \
     --scope="veteran_status.read" \
     --launch="ewogICJwYXRpZW50IjogIjEyMzRWNTY3OCIsCiAgImVuY291bnRlciI6ICI5ODc2LTU0MzItMTAwMCIKfQ==" \
      | jq

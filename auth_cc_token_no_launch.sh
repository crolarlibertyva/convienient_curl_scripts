#!/bin/sh
npm i
node \
     node_modules/lighthouse-auth-utils/auth-cc.js \
     --client-id=$CC_CLIENT_ID \
     --client-secret=$CC_CLIENT_SECRET \
     --authorization-url=$AS_HOST \
     --scope="launch" \
      | jq

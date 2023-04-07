#!/bin/sh

auth_cmd="node node_modules/lighthouse-auth-utils/auth.js"
auth_cc_cmd="node node_modules/lighthouse-auth-utils/auth-cc.js"

do_token() { 
  local url=

  if [[ $AS_HOST == *"localhost"* ]];
  then
    url-"$AS_HOST"
  else
    url="http://localhost:7100/oauth2/health/system/v1"
  fi  
  npm i
  local cc
  token="$($auth_cmd \
          --client-id="$CC_CLIENT_ID" \
          --client-secret="$CC_CLIENT_SECRET" \
          --authorization-url=$url \
          --scope="$SCOPES" \
          ")"
  echo "$token";
}

do_token()
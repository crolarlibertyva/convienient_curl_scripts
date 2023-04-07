#!/usr/bin/env bash
# Team Pivot!
# Simple script to test the Oauth Proxy.



# Variables
auth_cmd="node node_modules/lighthouse-auth-utils/auth.js"
export REDIRECT_URI="https://app/after-auth"
pass=1
curl_body=$(mktemp)
curl_status=$(mktemp)

# Helper Functions

track_result() {
  if [[ "$?" -gt 0 ]]
  then
    pass=0
  fi
}

# --------

# Code and Token Utilities
do_token() {
  payload="$1"
  curl -X POST \
    -s \
    -i \
    -H 'Accept: application/json' \
    -H 'Content-Type: application/json' \
    -o "$curl_body" \
    -d "$payload" \
    "$HOST/TOKEN?redirect_uri=$REDIRECT_URI" > "$curl_status"
  if [[ "$(cat "$curl_status")" == "200" ]] && [ "$(cat "$curl_body" | jq ".error")" = "null" ];
  then
    TOKEN="$(cat "$curl_body")"
  fi
}

assign_token() {

  local code
  code=$($auth_cmd \
      vasdvp/lighthouse-auth-utils:1.1.2 auth \
      --redirect-uri="$REDIRECT_URI" \
      --authorization-url="$AS_HOST" \
      --user-email="$USER_EMAIL" \
      --user-password="$USER_PASSWORD" \
      --client-id="$CLIENT_ID" \
      --client-secret="$CLIENT_SECRET" \
      --scope="$SCOPES" \
      )

  local CODE
  CODE=$(echo "$code" | jq ".code" | tr -d '"')

  if [[ -z $CODE ]];
  then
    echo -e "\nFailed to retrieve code."
    echo "This is likely a lighthouse-auth-utilities bot issue."
    echo "Check for valid configuration."
    echo "Exiting ... "
    exit 1
  fi
  echo "$CODE"
}

echo "Requesting token ..."
TOKEN=$(assign_token)
echo "Retrieved token ${TOKEN}"


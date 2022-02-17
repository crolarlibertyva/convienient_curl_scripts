curl -v --location --request POST "$AS_HOST/token" \
--header "Content-Type: application/x-www-form-urlencoded" \
--data-urlencode "grant_type=refresh_token" \
--data-urlencode "client_id=$CLIENT_ID" \
--data-urlencode "refresh_token=$1"


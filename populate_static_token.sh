#!/bin/sh
aws dynamodb put-item \
--table-name StaticTokens  \
--endpoint-url http://localhost:8000 \
--item \
    "{\"static_access_token\": {\"S\": \"$ACCESS_TOKEN\"}, \"static_refresh_token\": {\"S\": \"$REFRESH_TOKEN\"}, \"static_scopes\": {\"S\": \"$SCOPES\"}, \"static_expires_in\": {\"N\": \"3600\"}, \"static_icn\": {\"S\": \"$ICN\"}}"

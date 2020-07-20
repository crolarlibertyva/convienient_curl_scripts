#!/bin/sh
echo "authorization at $AS_HOST"
curl "$AS_HOST/authorization?client_id=$CLIENT_ID&response_type=code&redirect_uri=$BAD_REDIRECT_URI&state=state-296bc9a0-a2a2-4a57-be1a-d0e2fd9bb601&scope=openid"

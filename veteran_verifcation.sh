#!/bin/sh
curl -v -X POST \
  --header "Content-Type: application/json" \
  --data-raw '{
    "ssn": "796013145",
    "first_name": "Willard",
    "last_name": "Riley",
    "birth_date": "1959-02-25",
    "middle_name": "Tim",
    "gender": "M"
   }' \
  "http://localhost:18080/v0/status"


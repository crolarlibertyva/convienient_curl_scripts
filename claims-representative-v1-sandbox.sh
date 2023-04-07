curl https://sandbox-api.va.gov/services/claims/v1/claims \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H 'X-VA-Birth-Date: 1967-06-19' \
  -H 'X-VA-First-Name: Tamara' \
  -H 'X-VA-Last-Name: Ellis' \
  -H 'X-VA-SSN: 796130115' \
  -H 'cache-control: no-cache'
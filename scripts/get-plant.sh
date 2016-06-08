TOKEN='BAhJIiU3YWI5N2I2ZTdhNmNhYzc3NTUzMmVhZjczMGY2OWYwYgY6BkVG--3b49082275fae1603eae48b87f56a914f5c8af10'
curl --include --request GET http://localhost:3000/plants/1 \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \

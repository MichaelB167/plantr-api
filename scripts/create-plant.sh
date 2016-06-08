TOKEN='BAhJIiU3YWI5N2I2ZTdhNmNhYzc3NTUzMmVhZjczMGY2OWYwYgY6BkVG--3b49082275fae1603eae48b87f56a914f5c8af10'
curl --include --request POST http://localhost:3000/plants \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "plant" : {
      "category" : "annual",
      "harvest" : "dinner",
      "name" : "thyme",
      "quantity" : "5",
      "planted_on" : "2016-06-05",
      "expected_harvest" : "2016-07-05",
      "care_notes" : "spray for aphids",
      "zipcode" : "02472"
    }
  }'

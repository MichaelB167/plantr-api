TOKEN='BAhJIiU2Y2I4MTQ4M2MxMGEyMGI4MmY4NTkyMjVkOTI0ZTFiZAY6BkVG--91d78110d89d83feb3185787e71c0780ae048241'
curl --include --request POST http://localhost:3000/plants \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "plant" : {
      "category" : "herb",
      "harvest" : "dinner",
      "name" : "parsley",
      "quantity" : "5",
      "planted_on" : "2016-06-05",
      "expected_harvest" : "2016-07-05",
      "care_notes" : "spray for aphids"
    }
  }'

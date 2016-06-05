TOKEN='BAhJIiUyZjEyOWRiODQ1YzBhMWYxMmViMGE5ODRjMGI2NmNkZQY6BkVG--2d6c5458e3c7fc403aa320f41559a0446e4f6873'
curl --include --request PATCH http://localhost:3000/plants/1 \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "plant" : {
      "category" : "vegetable",
      "harvest" : "dinner",
      "name" : "cucumber",
      "quantity" : "5",
      "planted_on" : "2016-06-05",
      "expected_harvest" : "2016-07-05",
      "care_notes" : "spray for aphids"
    }
  }'

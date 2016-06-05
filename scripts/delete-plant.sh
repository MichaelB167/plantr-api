TOKEN='BAhJIiUyZjEyOWRiODQ1YzBhMWYxMmViMGE5ODRjMGI2NmNkZQY6BkVG--2d6c5458e3c7fc403aa320f41559a0446e4f6873'
curl --include --request DELETE http://localhost:3000/plants/1 \
  --header "Authorization: Token token=$TOKEN" \

TOKEN='BAhJIiVmNTM4ZmVkZTljNDhjOWFjZjViZDRjZGNmZjU0ODVkOQY6BkVG--93f5956d2294903f4613a9ce17775025618687b8'
curl --include --request GET http://localhost:3000/plants/ \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \

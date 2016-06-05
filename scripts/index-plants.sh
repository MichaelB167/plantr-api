TOKEN='BAhJIiU2Y2I4MTQ4M2MxMGEyMGI4MmY4NTkyMjVkOTI0ZTFiZAY6BkVG--91d78110d89d83feb3185787e71c0780ae048241'
curl -- include --request GET http://localhost:3000/plants \
    --header "Authorization: Token token=$TOKEN"

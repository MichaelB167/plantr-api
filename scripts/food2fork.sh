curl --get --include 'https://community-food2fork.p.mashape.com/get?key=5b778f1043cebc3d2ef97301d9e0b8ca&rId=37859' \
  -H 'X-Mashape-Key: L6g81XjLIbmshggOcSE8HpgxKm8lp1rvJFLjsnYRjyfhPr7pQc' \
  -H 'Accept: application/json'


curl --include --request GET http://localhost:3000/recipes/index \
    --header "Content-Type: application/json" \

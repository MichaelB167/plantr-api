# Project Components

Live application: <http://michaelb167.github.io/plantr-front-end/index.html>

Front end repository: <https://github.com/MichaelB167/plantr-front-end>

## App Explanation

I've always been interested in the idea of self-sustainability to reduce our collective ecological footprint.  To that point I decided to make a gardening web-app so users (including myself) can easily track/care for plants in their garden, harvest plants when they are ready to eat, and eventually find recipes using those plants.

Upon signing up, users are automatically signed in and directed to a landing page.  Either by using the navbar or clicking through the index doorway, they can add plants with category, name, quantity and care note attributes.  They can also specify the date they were planted to get the number of days since planting, the date they can be potentially harvested to get the number of days until then, and their zip code if they want a brief weather forecast to know whether or not they need to water in the next few days.

After adding a plant, users can add more or view their plants by category along with the above mentioned attributes.  If they need to update information for any of the attributes they can do so, or delete the plant if it dies or they mistakenly entered it.  Once it is ready to harvest, they can click harvest to send it to their harvested plants page.  Later in development users will be able to search for recipes based on the plants they've harvested recently, but that feature isn't fully renderable in the browser yet.

## Wireframes/Database Structure

Wireframes: <http://i.imgur.com/cOQQOVP.jpg>

Entity Relationships Diagram: <http://i.imgur.com/WZYh63M.jpg>

## Dependencies Installation

HTTParty- `gem install httparty` (I had to manually put it in my gemfile and bundle install to fully load it)

## API

### Plants

| Verb   | URI Pattern | Controller#Action |
|--------|-------------|-------------------|
| GET    | '/plants'   | 'plants#index'    |
| POST   | '/plants'   | 'plants#create'   |
| PUT    | '/plants'   | 'plants#update'   |
| DELETE | '/plants'   | 'plants#destroy'  |

Sample curl script for 'plants#update':

```sh
TOKEN=''
curl --include --request PATCH
http://localhost:3000/plants/1 \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "plant" : {
      "category" : "vegetable",
      "harvest" : "true",
      "name" : "kale",
      "quantity" : "5",
      "planted_on" : "2016-06-05",
      "expected_harvest" : "2016-07-05",
      "care_notes" : "spray base with neem oil for aphids"
    }
  }'
```

### Recipes (Using Food2Fork API)

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | '/recipes'  | 'recipes#index'   |

Sample curl script for 'recipes#index':

```sh
curl --include --request GET http://localhost:3000/recipes/index \
    --header 'Accept: application/json' \
```

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
```

```sh
scripts/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "an@example.email"
  }
}
```

#### POST /sign-in

Request:

```sh
curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'
```

```sh
scripts/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "an@example.email",
    "token": "33ad6372f795694b333ec5f329ebeaaa"
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH http://localhost:3000/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'
```

```sh
ID=1 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=1 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

#### GET /users

Request:

```sh
curl --include --request GET http://localhost:3000/users \
  --header "Authorization: Token token=$TOKEN"
```

```sh
TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/users.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "users": [
    {
      "id": 2,
      "email": "another@example.email"
    },
    {
      "id": 1,
      "email": "an@example.email"
    }
  ]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:3000/users/$ID \
  --header "Authorization: Token token=$TOKEN"
```

```sh
ID=2 TOKEN=33ad6372f795694b333ec5f329ebeaaa scripts/user.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 2,
    "email": "another@example.email"
  }
}
```

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.

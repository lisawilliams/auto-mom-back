#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/chores"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=BAhJIiUzZjUwNWU5NDZkMDFmMWQ2ZDQ4MDllYTQ1ZmVmYmMyMQY6BkVG--32a40961e2d6ab74ec545c0095d36a0ced7c1f36"\
  --header "Content-Type: application/json" \
  --data '{
    "chore": {
      "chore_name": "Take out recycling",
      "directions": "Take recycling bins and empty into big green bin",
      "day_of_week": "Monday",
      "user_id": "7"
    }
  }'

echo

# This worked and returned a status of 201 Created at 4:25 AM on Sunday, June 11

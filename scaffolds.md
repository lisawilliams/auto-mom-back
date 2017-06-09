

DONE Scaffold for 'chore'

```bin/rails generate scaffold chore chore_name:string directions:string day_of_week:string```

Scaffold for 'users-have-chores'

`rails generate migration AddUserToChore user:references`

In models, update:
Users have_many chores
chores belong_to users

Scaffold for 'mom'

```bin/rails generate scaffold mom given_name:string family_name:string```


DONE Scaffold for 'kid'

```bin/rails generate scaffold kid given_name:string family_name:string```

DONE Scaffold for 'chore'

```bin/rails generate scaffold chore chore_name:string directions:string day_of_week:string```

Scaffold for Add Mom ID to Kid

```rails generate migration AddMomIDtoKid```

See the [following Stack Overflow thread](https://stackoverflow.com/questions/8555082/rails-how-to-setup-a-one-to-many-relationship) for how to change the models


Scaffold for 'family'

```bin/rails generate scaffold family mom:references kid:references```


Scaffold for 'kids-have-chores'

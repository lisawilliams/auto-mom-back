

create-chore:

 ```
 Chore.new({chore_name: 'Make Bed', directions: 'Take all electronics off the bed and place safely away where they will not be stepped on. Remove bedspread, pillows, and top sheet. Straighten bottom sheet and remove any socks that may have ended up at the bottom of the bed. Spread top sheet over bottom sheet. Smooth out top sheet. Spread bedspread or blanket over top sheet. Smooth out bedspread. Fold any additional blankets and place them at the foot of the bed. Take any laundry you found and put it in the hamper.', day_of_week: 'Every Day', user_id: '6'})

 ```
 Chore.new({chore_name: 'Water Garden', directions: 'Water garden beds and containers.', day_of_week: 'Tuesday', user_id: '6'})


You have to assign it to a variable and then do variableName.save like so:
[6] pry(main)> newChore = Chore.new({chore_name: 'Water Garden', directions: 'Water garden beds and containers.', day_of_week: 'Tuesday', user_id: '6'})
=> #<Chore:0x007fef44748430 id: nil, chore_name: "Water Garden", directions: "Water garden beds and containers.", day_of_week: "Tuesday", created_at: nil, updated_at: nil, user_id: 6>
[7] pry(main)> newChore.save
   (0.2ms)  BEGIN
  User Load (0.8ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = $1 LIMIT $2  [["id", 6], ["LIMIT", 1]]
  SQL (2.0ms)  INSERT INTO "chores" ("chore_name", "directions", "day_of_week", "created_at", "updated_at", "user_id") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["chore_name", "Water Garden"], ["directions", "Water garden beds and containers."], ["day_of_week", "Tuesday"], ["created_at", 2017-06-09 20:26:07 UTC], ["updated_at", 2017-06-09 20:26:07 UTC], ["user_id", 6]]
   (54.9ms)  COMMIT
=> true

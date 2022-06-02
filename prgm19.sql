///Question 1

> db.empl.find({"name":/^S/i}).pretty()

///Question 2

>  db.empl.find({"name":/n$/i}).pretty()

///Question 3

> db.empl.find({"name":/s/i}).pretty()

///Question 4

> db.empl.update({name:"Ben"},{$inc:{salary:8000}})

///Question 5

>  db.empl.updateMany({},{$inc:{salary:4000}})

///Question 6

>db.empl.updateMany({},{$set:{"RS":"WC"}})

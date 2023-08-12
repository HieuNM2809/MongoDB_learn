---------------------------------------- SYNTAX -------------------------------------------------
- db.posts.find(query, projection) 
- db.posts.findOne(query, projection)
- db.posts.findOne(query, projection)
-> projection : 1 là show. 0 là ẩn

---------------------------------------- EXAMPLE -------------------------------------------------
=> Mongo : db.posts.find({"category": "News"}, {"title": 1})
=> SQL   : select title from posts where category = "News"

---------------------------------------- CURSOR OBJECT -------------------------------------------------
- db.posts.findOne(query, projection).toArray()
- db.posts.find().forEach((e)=> { console.log(e) })

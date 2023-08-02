-------------------------- SYNTAX -------------------------

db.posts.updateOne(query, update, options)
db.posts.updateMany(query, update, options)

-------------------------- EXAMPLE -------------------------

db.posts.updateOne( 
  { title: "Post Title 5" }, 
  {
    $set: 
      {
        title: "Post Title 5",
        body: "Body of post.",
        category: "Event",
        likes: 5,
        tags: ["news", "events"],
        date: Date()
      }
  }, 
  { upsert: true }
)

db.posts.updateMany({}, { $inc: { likes: 1 } })

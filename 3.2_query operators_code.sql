
db.movies.find({
    $or: [
        { title: "superman" },
        { star: { $gte: 4 } }
    ]
})
=> select * from  movies where title = "superman" or star  >=  4

--------------------------------------------------------------------------------

db.movies.find({
    { title: "superman" },
    { title1: "superman1" },
})
=> SELECT * FROM movies WHERE title = "superman" OR title = "superman1";

--------------------------------------------------------------------------------

// Tìm tất cả các tài liệu có trường "age"
db.collection.find({ age: { $exists: true } })
// Tìm tất cả các tài liệu có trường "age" tồn tại và không phải là null
db.collection.find({ age: { $exists: true, $ne: null } })

--------------------------------------------------------------------------------
// Find documents where sinh > toan
db.students.find({ sinh: { $gt: "$toan" } })

db.students.find({
  $expr: {
    $gt: ["$sinh", "$toan"]
  }
})

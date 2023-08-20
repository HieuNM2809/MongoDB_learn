
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

--------------------------------------------------------------------------------
const pageSize = 10; // Number of documents per page
const pageNumber = 2; // Page number (1-based index)
db.students.aggregate([
  {
    $sort: {
      _id: 1 // Sort by name in ascending order
    }
  },
  {
    $skip: (pageNumber - 1) * pageSize // Skip documents based on page number
  },
  {
    $limit: pageSize // Limit the number of documents per page
  }
])


Helpful Articles/ Docs:

More on find(): https://docs.mongodb.com/manual/reference/method/db.collection.find/

More on Cursors: https://docs.mongodb.com/manual/tutorial/iterate-a-cursor/

Query Operator Reference: https://docs.mongodb.com/manual/reference/operator/query/
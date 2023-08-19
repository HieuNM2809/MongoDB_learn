
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
SELECT * FROM movies WHERE title = "superman" OR title = "superman1";
--------------------------------- Aggregation Pipelines --------------------------------- 
-- Ví dụ 
db.posts.aggregate([
  // Stage 1: Only find documents that have more than 1 like
  {
    $match: { likes: { $gt: 1 } }
  },
  // Stage 2: Group documents by category and sum each categories likes
  {
    $group: { _id: "$category", totalLikes: { $sum: "$likes" } }
  }
]);


-- Group 
db.posts.aggregate(
    [ { $group : { _id : "$property_type" } } ]
)
db.posts.aggregate([
  {
    $group: {
      _id: {
        category: "$category",
        tag: "$tag"
      }
    }
  }
]);

-- Limit 
db.posts.aggregate([
   { $limit: 1 }
])

-- $project = select 
db.posts.aggregate([
  {
    $project: {
      "category": 1,
      "body": 1,
      "title": 1
    }
  },
  {
    $limit: 5
  }
])

-- sort
db.posts.aggregate([
  {
    $project: {
      "category": 1,
      "body": 1,
      "title": 1,
	  "likes" :1
    }
  },
	{ 
    $sort: { "likes": 1 } 
  },
	{
    $limit: 5
  }
])

-- match = search like 
db.posts.aggregate([ 
  // $match: { "body": { $regex: /Body of/i } }
  { $match : { "body" : "Body of post." } },
  { $limit: 2 },
  { $project: {
      "category": 1,
      "body": 1,
      "title": 1,
			"likes" :1
  }}
])

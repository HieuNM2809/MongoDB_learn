
// insertOne
// insertMany




db.createCollection("posts");

db.posts.insertOne({
  title: "Post Title 1",
  body: "Body of post.",
  category: "News",
  likes: 1,
  tags: ["news", "events"],
  date: Date()
});


db.posts.insertMany([  
  {
    title: "Post Title 2",
    body: "Body of post.",
    category: "Event",
    status : "publish",
    likes: 2,
    tags: ["news", "events"],
    date: Date()
  },
  {
    title: "Post Title 3",
    body: "Body of post.",
    category: "Technology",
    likes: 3,
		share : 12,
    tags: ["news", "events"],
    date: Date()
  },
  {
    title: "Post Title 4",
    body: "Body of post.",
    category: "Event",
    likes: 4,
    tags: ["news", "events"],
    date: Date(),
		user : {
			"name" : "hieu",
			"age" : 22
		}
    }
]);

--------------------    ordered: false
-- tùy chọn { ordered: false } cho phép MongoDB tiếp tục
-- chèn tài liệu vào collection mặc dù có lỗi xảy ra, trong khi
-- { ordered: true } sẽ dừng việc chèn khi gặp lỗi đầu tiên.
db.posts.insertMany([{
    "name": "hehe",
    "detail": "detail"
}, {
    "name": "abc",
    "detail": "detail"
}], {
    ordered: false
});
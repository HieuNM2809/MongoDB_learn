/*
 Navicat Premium Data Transfer

 Source Server         : MongoDB
 Source Server Type    : MongoDB
 Source Server Version : 60008
 Source Host           : localhost:27017
 Source Schema         : test2107

 Target Server Type    : MongoDB
 Target Server Version : 60008
 File Encoding         : 65001

 Date: 01/08/2023 17:10:37
*/


// ----------------------------
// Collection structure for posts
// ----------------------------
db.getCollection("posts").drop();
db.createCollection("posts");

// ----------------------------
// Documents of posts
// ----------------------------
db.getCollection("posts").insert([ {
    _id: ObjectId("64c7193e1e5b000042006129"),
    title: "Post Title 4",
    body: "Body of post.",
    category: "Event",
    likes: 5,
    tags: [
        "news",
        "events"
    ],
    date: "Mon Jul 31 2023 09:15:26 GMT+0700 (SE Asia Standard Time)",
    user: {
        name: "hieu",
        age: 22
    }
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c72960551b82205ab99531"),
    title: "Post Title 5",
    body: "Body of post update 2.",
    category: "Event",
    date: "Mon Jul 31 2023 10:24:39 GMT+0700 (SE Asia Standard Time)",
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c72998551b82205ab99546"),
    title: "Post Title 5",
    body: "Body of post update 2.",
    category: "Event",
    date: "Mon Jul 31 2023 10:25:12 GMT+0700 (SE Asia Standard Time)",
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c73b241e5b00004200612a"),
    title: "Post Title 6",
    body: "Body of post.",
    category: "Event",
    date: ISODate("2023-07-31T04:40:04.014Z"),
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c73b301e5b00004200612b"),
    title: "Post Title 6",
    body: "Body of post.",
    category: "Event",
    dateCreated: ISODate("2023-07-31T04:40:16.612Z"),
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c73b3c1e5b00004200612c"),
    title: "Post Title 6",
    body: "Body of post.",
    category: "Event",
    dateCreated: ISODate("2023-07-31T04:40:28.413Z"),
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c73b401e5b00004200612d"),
    title: "Post Title 6",
    body: "Body of post.",
    category: "Event",
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c73b561e5b00004200612e"),
    title: "Post Title 5",
    body: "Body of post update 2.",
    category: "Event",
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c73b611e5b00004200612f"),
    title: "Post Title 5",
    body: "Body of post update 2.",
    category: "Event",
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c73b751e5b000042006130"),
    title: "Post Title 7",
    body: "Body of post update 2.",
    category: "HEHE",
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);
db.getCollection("posts").insert([ {
    _id: ObjectId("64c73b9d1e5b000042006131"),
    title: "Post Title 10",
    body: "Body of post update 2.",
    category: "Event",
    dateCreated: ISODate("2023-07-31T04:42:05.391Z"),
    likes: 6,
    tags: [
        "news",
        "events"
    ]
} ]);

// ----------------------------
// Collection structure for posts2
// ----------------------------
db.getCollection("posts2").drop();
db.createCollection("posts2",{
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: [
                "title",
                "body"
            ],
            properties: {
                title: {
                    bsonType: "string",
                    description: "Title of post - Required."
                },
                body: {
                    bsonType: "string",
                    description: "Body of post - Required."
                },
                category: {
                    bsonType: "string",
                    description: "Category of post - Optional."
                },
                likes: {
                    bsonType: "int",
                    description: "Post like count. Must be an integer - Optional."
                },
                tags: {
                    bsonType: [
                        "string"
                    ],
                    description: "Must be an array of strings - Optional."
                },
                date: {
                    bsonType: "date",
                    description: "Must be a date - Optional."
                }
            }
        }
    }
});

// ----------------------------
// Documents of posts2
// ----------------------------
db.getCollection("posts2").insert([ {
    _id: ObjectId("64c75f271e5b000042006132"),
    title: "12",
    body: "123"
} ]);

// ----------------------------
// Collection structure for product
// ----------------------------
db.getCollection("product").drop();
db.createCollection("product");

// ----------------------------
// Documents of product
// ----------------------------

// ----------------------------
// Collection structure for test2107
// ----------------------------
db.getCollection("test2107").drop();
db.createCollection("test2107");

// ----------------------------
// Documents of test2107
// ----------------------------
db.getCollection("test2107").insert([ {
    _id: ObjectId("64ba46c77e9f857b16802fd6")
} ]);

// ----------------------------
// Collection structure for user
// ----------------------------
db.getCollection("user").drop();
db.createCollection("user");

// ----------------------------
// Documents of user
// ----------------------------
db.getCollection("user").insert([ {
    _id: ObjectId("64ba46e87e9f857b16802fdd"),
    name: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba47407e9f857b16802fde")
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba477c7e9f857b16802fe0"),
    hehe: "jej"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4abd371f0000c70037d6"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4acf371f0000c70037d7"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ad0371f0000c70037d8"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ad0371f0000c70037d9"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ad1371f0000c70037da"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ad1371f0000c70037db"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ad1371f0000c70037dc"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae2371f0000c70037dd"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae2371f0000c70037de"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae2371f0000c70037df"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae3371f0000c70037e0"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae3371f0000c70037e1"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae4371f0000c70037e2"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae4371f0000c70037e3"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae5371f0000c70037e4"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae5371f0000c70037e5"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae6371f0000c70037e6"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae6371f0000c70037e7"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae6371f0000c70037e8"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae7371f0000c70037e9"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae7371f0000c70037ea"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae8371f0000c70037eb"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae8371f0000c70037ec"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae9371f0000c70037ed"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4ae9371f0000c70037ee"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aea371f0000c70037ef"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aea371f0000c70037f0"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aea371f0000c70037f1"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aeb371f0000c70037f2"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aeb371f0000c70037f3"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aec371f0000c70037f4"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aec371f0000c70037f5"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aed371f0000c70037f6"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aed371f0000c70037f7"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aee371f0000c70037f8"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aee371f0000c70037f9"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aef371f0000c70037fa"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aef371f0000c70037fb"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4aef371f0000c70037fc"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af0371f0000c70037fd"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af0371f0000c70037fe"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af1371f0000c70037ff"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af1371f0000c7003800"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af2371f0000c7003801"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af2371f0000c7003802"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af3371f0000c7003803"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af3371f0000c7003804"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af4371f0000c7003805"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af4371f0000c7003806"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af5371f0000c7003807"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af5371f0000c7003808"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af6371f0000c7003809"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af6371f0000c700380a"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af6371f0000c700380b"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af7371f0000c700380c"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4af8371f0000c700380d"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4b04371f0000c700380e"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4b04371f0000c700380f"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4b09371f0000c7003810"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4b09371f0000c7003811"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4b13371f0000c7003812"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4b14371f0000c7003813"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4b15371f0000c7003814"),
    hieu: "hieu"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("64ba4b1e371f0000c7003815"),
    hieu: "hieu1"
} ]);

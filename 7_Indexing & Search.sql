db.movies.aggregate([
  {
    $search: {
      index: "default", // optional unless you named your index something other than "default"
      text: {
        query: "star wars",
        path: "title"
      },
    },
  },
  {
    $project: {
      title: 1,
      year: 1,
    }
  }
]
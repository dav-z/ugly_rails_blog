User.create ([
  {id: 1, fname: 'David', lname: 'Zheng', bio: 'This is my blog, I guess.', email: 'david@zheng.com', password: 'password'}
  ])

Post.create ([
  {user_id: 1, title: 'My first blog post.', body: 'Wow, I\'m on a blog.'}
  ])

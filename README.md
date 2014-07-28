##### [GET] API key

##### List of Users
====================
```
GET /users
```
This endpoint will give access to json file with list of users.
```
http://localhost:9393/users
```

##### Example
```json
[{
  id: 1,
  username: "reynold_stamm",
  email: "laria.ziemann@walter.com",
  name: "Roberta Wilkinson I",
  bio: "Perferendis recusandae et qui. Alias culpa quod sapiente quisquam sit. Vel est inventore. Omnis eum exercitationem. Est dolorem consequatur distinctio."
  },
  {
  id: 2,
  username: "earnest",
  email: "ellis@townefeest.name",
  name: "Deshaun Skiles",
  bio: "Omnis ab voluptatem eum magni sit. Eum quia sapiente harum perspiciatis id. Error autem earum magnam vero eaque et. Delectus explicabo et quia debitis distinctio."
}]

```
==================================
##### List of Posts
```
GET /posts
```
This endpoint will give access to json file with list of posts.
```
http://localhost:9393/posts
```
##### Example

```json
[{
  id: 1,
  title: "nam",
  body: "Fuga non quasi quia. Molestiae voluptas esse eligendi commodi rerum error. Id id quibusdam soluta et quis aut. Minima unde error velit tempora eaque non. Animi eum sequi.",
  user_id: 1
  },
  {
  id: 2,
  title: "repudiandae",
  body: "Voluptatem quia nostrum et modi voluptatem ut. Incidunt consequuntur vitae minima. Voluptatem dicta et rerum in. Facilis praesentium inventore nulla cupiditate. Incidunt et id quam eum.",
  user_id: 1
  },
  {
  id: 3,
  title: "sapiente",
  body: "Ducimus temporibus iure. Omnis dignissimos ut qui. Minus quaerat accusamus eligendi dolores. Eos officia voluptas quis. Aperiam sit beatae et quasi iure fugiat ipsum.",
  user_id: 1
}]
```

##### List of posts for a user

```
GET /users/:id/posts
```
This endpoint will give access to json file with user info and list of user's posts.
```
http://localhost:9393/users/:id/posts
```
##### Example
```json
[{
  id: 8,
  title: "magnam",
  body: "Eius voluptas aut veritatis autem odio possimus voluptas. Explicabo odit minus consequuntur quia maxime sint id. Nihil earum aut itaque quidem. Amet ad eum aut.",
  user_id: 3
  },
  {
  id: 9,
  title: "id",
  body: "Voluptatum laboriosam aut. In dolorum iusto. Laborum qui reprehenderit. Corporis ex eos iure sunt vel perspiciatis. In fugiat placeat odio numquam.",
  user_id: 3
  },
  {
  id: 10,
  title: "maiores",
  body: "Vel exercitationem illum labore quis saepe in. Molestias voluptas eos ducimus error ut. Non fugit odio tempore sit mollitia quo sint.",
  user_id: 3
}]
```

##### List of comments for a post by a user
```
GET /users/:id/posts/:id/comments
```

This endpoints will give access to json file comments on one post by one user.
```
http://localhost:9393/users/:id/posts/:id/comments
```

##### Create a new post by a user
```
POST/
```

##### Create a new comment for a post by a user
```
POST/
```

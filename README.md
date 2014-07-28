##### Create an API key
```
POST /keys?
```

This endpoint will generate an API key.

##### Example
```ruby
~> curl -X POST "http://localhost:9393/keys?user_id=2"
Your API Key is: 26f7c8ce1b09eb65d8e0283e1091fb4f
```

====================
##### List of Users
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
==================================
##### List of posts for a user

```
GET /users/:user_id/posts
```
This endpoint will give access to json file with user info and list of user's posts.
```
http://localhost:9393/users/3/posts
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

==================================

##### List of comments for a post by a user
```
GET /users/:user_id/posts/:post_id/comments
```

This endpoints will give access to json file with comments on specific post by the specific user.
```
http://localhost:9393/users/1/posts/3/comments
```
```json
[{
  id: 7,
  body: "Laboriosam est quis. Similique et distinctio nobis placeat explicabo doloremque voluptas. Nesciunt voluptatem vitae.",
  post_id: 3,
  user_id: 1
  },
  {
  id: 8,
  body: "Soluta placeat velit odit aut. Omnis ut veniam omnis ab. Est voluptatibus quis. Cupiditate in aut aperiam. Deserunt et accusantium.",
  post_id: 3,
  user_id: 1
  },
  {
  id: 9,
  body: "Explicabo sit ut vel et esse tenetur sit. Natus et eos nostrum velit omnis atque laborum. Distinctio sit aliquid minima vel eius quo est. A quae odit eum sunt. Excepturi nemo dicta sint nulla.",
  post_id: 3,
  user_id: 1
}]
```
==================================

##### Create a new post by a user
```
POST /posts
POST Data
--------------------------
title=This+is+the+title+of+the+post&body=This+is+the+body+of+the+post&user_id=1
```
This endpoint will give access to send a POST request to create new posts.
```
http://localhost:9393/posts?
```
##### Example
```ruby
~> curl -X POST "http://localhost:9393/posts?title=This+is+the+title+of+the+post&body=This+is+the+body+of+the+post&user_id=1"
```
==================================
##### Create a new comment for a post by a user
```
POST /posts/comments
POST Data
--------------------------
body=This+is+a+comment&post_id=2&user_id=3"
```

This endpoint will give access to send a POST request to create the new comment on the post.

```
http://localhost:9393/posts/comments?
```
##### Example
```json
~> curl -X POST "http://localhost:9393/posts/comments?body=This+is+a+comment&post_id=2&user_id=3"
```

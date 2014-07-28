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
```
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

##### List of Posts
```
GET /posts
```
This endpoint will give access to json file with list of posts.
```
http://localhost:9393/posts
```

##### List of posts for a user

```
GET /users/:id/posts
```
This endpoint will give access to json file with user info and list of user's posts.
```
http://localhost:9393/users/:id/posts
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

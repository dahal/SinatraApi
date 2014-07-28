#### [GET] API key

#### List of Users
```
GET /users
```
This endpoint will give access to json file with list of users.
```
http://localhost:9393/users
```

#### List of Posts
```
GET /posts
```
This endpoint will give access to json file with list of posts.
```
http://localhost:9393/posts
```

#### List of posts for a user

```
GET /users/:id/posts
```
This endpoint will give access to json file with user info and list of user's posts.
```
http://localhost:9393/users/:id/posts
```

#### List of comments for a post by a user
```
GET /users/:id/posts/:id/comments
```

This endpoints will give access to json file comments on one post by one user.
```
http://localhost:9393/users/:id/posts/:id/comments
```

#### Create a new post by a user
```
POST/
```

#### Create a new comment for a post by a user
```
POST/
```

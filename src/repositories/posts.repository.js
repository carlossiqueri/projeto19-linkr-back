import { db } from "../config/database.js";

export function createPost(url, description, user_id, urlMeta, url_picture) {
  return db.query(
    `
    INSERT INTO posts(url, description, "user_id", url_title, url_description, url_picture) VALUES ($1, $2, $3, $4, $5, $6);
    `,
    [
      url,
      description,
      user_id,
      urlMeta.url_title,
      urlMeta.url_description,
      url_picture,
    ]
  );
}

export function getPostsDB() {
  return db.query(
    `
  SELECT posts.*, users.username, users.picture_url AS user_picture
  FROM users
  JOIN posts ON users.id = user_id
  ORDER BY id DESC
  LIMIT 20;
  `,
    []
  );
}

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
    SELECT
    posts.*,
    (
      SELECT ARRAY_AGG(users.username)
      FROM users
      JOIN likes ON users.id = likes.user_id
      WHERE likes.post_id = posts.id
    ) AS liked_by,
    users.picture_url AS user_picture,
    (
      SELECT COUNT(*)
      FROM likes
      WHERE likes.post_id = posts.id
    ) AS like_count
  FROM
    posts
  JOIN
    users ON users.id = posts.user_id
  ORDER BY
    posts.id DESC
  LIMIT 20;
  `,
    []
  );
}

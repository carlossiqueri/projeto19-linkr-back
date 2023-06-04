import { db } from "../config/database.js";

export function createPost(url, description, user_id) {
  return db.query(
    `
    INSERT INTO posts(url, description, "user_id") VALUES ($1, $2, $3);
    `,
    [url, description, user_id]
  );
}

export function getPostsDB() {
  return db.query(`
  SELECT posts.*, users.username, users.picture_url AS user_picture
  FROM users
  JOIN posts ON users.id = user_id
  ORDER BY id DESC
  LIMIT 20;
  `, []);
}

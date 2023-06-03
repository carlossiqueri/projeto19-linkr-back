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
  SELECT * FROM posts
  ORDER BY id DESC
  LIMIT 20
  `);
}



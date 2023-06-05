import { db } from "../config/database.js";

export function createPost(url, description, user_id, urlMeta, url_picture) {
  return db.query(
    `
    INSERT INTO posts(url, description, "user_id", url_title, url_description, url_picture) VALUES ($1, $2, $3, $4, $5, $6) RETURNING id;
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
`
  );
}

export function insertHashtagDB(hashtag) {
  return db.query(
    `
  INSERT INTO hashtags(hashtag_name) VALUES ($1) RETURNING id;
  `,
    [hashtag]
  );
}

export function insert_posts_hashtagsDB(hashtag_id, post_id) {
  return db.query(
    `
      INSERT INTO posts_hashtags (hashtag_id, post_id) VALUES ($1, $2)
    `,
    [hashtag_id, post_id]
  );
}

export function getHashtagsDB() {
  return db.query(`
  SELECT hashtag_name, COUNT(hashtag_name) AS hashtag_occurrence
  FROM hashtags GROUP BY hashtag_name ORDER BY hashtag_occurrence DESC;
  `);
}

export function deletePost(id){
  return db.query(`
  DELETE FROM posts WHERE id=$1;
  `, [id]);
}

export function updatePost(url, description, id, user_id){
  return db.query(`
  UPDATE posts SET url=$1, description=$2
  WHERE id=$3 AND "user_id"=$4;
  `, [url, description, id, user_id]);
}
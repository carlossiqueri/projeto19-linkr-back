import { db } from "../config/database.js";

export function findUserByEmailOrUsername(email, username) {
  const result = db.query(
    `
    SELECT
      *
    FROM
      users
    WHERE
      email = $1
    OR
      username = $2
    ;
  `,
    [email, username]
  );

  return result;
}

export function findUserByEmail(email) {
  const result = db.query(
    `
    SELECT
      *
    FROM
      users
    WHERE
      email = $1
    ;
  `,
    [email]
  );

  return result;
}

export function insertUser({ email, password, username, picture_url }) {
  return db.query(
    `
    INSERT INTO
      users(email, password, username, picture_url)
    VALUES
      ($1, $2, $3, $4)
    ;
  `,
    [email, password, username, picture_url]
  );
}

export function ListPostsUser(id) {
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
    users.username,
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
  WHERE
    user_id = $1
  ORDER BY
    posts.id DESC
  LIMIT 20;`, [id]
  );
}

export function ListSearch(searchValue) {
  return db.query(
    `
    SELECT id, username, picture_url
    FROM users
    WHERE LOWER(username) LIKE '${searchValue}%'
    ORDER BY RANDOM()
    LIMIT 10;
    `
  );
}

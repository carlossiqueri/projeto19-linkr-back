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

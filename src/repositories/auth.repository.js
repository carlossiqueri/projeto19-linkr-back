import { db } from "../config/database.js";

export async function createSession(token, user_id) {
  return db.query(
    `
    INSERT INTO
      sessions(token, user_id)
    VALUES
      ($1, $2)
    ;
  `,
    [token, user_id]
  );
}

export async function findSession(token){
  return db.query(`SELECT * FROM sessions WHERE token=$1;`, [token]);
}

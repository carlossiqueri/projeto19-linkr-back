import { db } from "../config/database.js";

export function createPost(url, description, user_id){
    return db.query(`
    INSERT INTO posts(url, description, "user_id") VALUES ($1, $2, $3);
    `, [url, description, user_id]);
}

export function deletePost(id, user_id){
    return db.query(`
    DELETE FROM posts WHERE id=$1 AND "user_id"=$2;
    `, [id, user_id]);
}

export function updatePost(url, description, id, user_id){
    return db.query(`
    UPDATE posts SET url=$1, description=$2
    WHERE id=$3 AND "user_id"=$4;
    `, [url, description, id, user_id]);
}
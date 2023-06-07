import { db } from "../config/database.js";

export function existFollow(user_id, id){
    return db.query(`
    SELECT * FROM follows WHERE "id_following"=$1 AND "id_follower"=$2;
    `,[user_id, id]);
}

export function startFollowing(user_id, id){
    return db.query(`
    INSERT INTO follows ("id_following", "id_follower") VALUES ($1, $2);
    `, [user_id, id]);
}

export function unfollow(user_id, id){
    return db.query(`
    DELETE FROM follows WHERE "id_following"=$1 AND "id_follower"=$2;
    `, [user_id, id]);
}
import { findSession } from "../repositories/auth.repository.js";
import { db } from "../config/database.js";

export async function validateAuth(req, res, next){
    const { authorization } = req.headers;
    const token = authorization?.replace("Bearer ", "");
    if(!token) return res.sendStatus(401);

    try{
        const sessions = await findSession(token);
        if(sessions.rowCount === 0) return res.sendStatus(401);

        const { rows: users } = await db.query(`
        SELECT * FROM users WHERE id=$1;
        `, [sessions.rows[0].user_id])


        res.locals.user = users[0]
        next();
    } catch(err){
        res.status(500).send(err.message);
    }
}
import { findSession } from "../repositories/auth.repository.js";

export async function validateAuth(req, res, next){
    const { authorization } = req.headers;
    const token = authorization?.replace("Bearer ", "");
    if(!token) return res.sendStatus(401);

    try{
        const sessions = await findSession(token);
        if(sessions.rowCount === 0) return res.sendStatus(401);
        res.locals.user_id = sessions.rows[0].user_id;

        next();
    } catch(err){
        res.status(500).send(err);
    }
}
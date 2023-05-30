import bcrypt from "bcrypt";
import { v4 as uuid } from "uuid";
import {
  findUserByEmail,
  insertUser,
} from "../repositories/user.repository.js";
import { createSession } from "../repositories/auth.repository.js";

export async function signUp(req, res) {
  try {
    const { email, password, username, picture_url } = req.user;

    await insertUser({ email, password, username, picture_url });

    res.sendStatus(201);
  } catch (err) {
    console.log(err);
    return res.sendStatus(500);
  }
}

export async function signIn(req, res) {
  try {
    const { email, password } = req.user;
    const userByEmail = await findUserByEmail(email);

    if (!userByEmail.rowCount) return res.sendStatus(401);

    const passwordAreCorrect = bcrypt.compareSync(
      password,
      userByEmail.rows[0].password
    );

    if (!passwordAreCorrect) {
      return res.sendStatus(401);
    }

    const token = uuid();
    const user_id = userByEmail.rows[0].id;

    await createSession(token, user_id);

    res.send({ token });
  } catch (err) {
    console.log(err);
    return res.sendStatus(500);
  }
}

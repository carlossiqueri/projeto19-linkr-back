import { insertUser } from "../repositories/user.repository.js";

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

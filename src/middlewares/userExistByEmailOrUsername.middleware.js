import { findUserByEmailOrUsername } from "../repositories/user.repository.js";

export async function userExistByEmailOrUsername(req, res, next) {
  try {
    const { user } = req;
    const userByEmail = await findUserByEmailOrUsername(
      user.email,
      user.username
    );

    if (userByEmail.rowCount) return res.sendStatus(422);

    next();
  } catch (err) {
    console.log(err);
    return res.sendStatus(500);
  }
}

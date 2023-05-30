import bcrypt from "bcrypt";
import userSchema from "../schemas/user.schema.js";

export function userValid(req, res, next) {
  const user = req.body;
  const { error } = userSchema.validate(user);

  if (error) return res.sendStatus(401);

  const passwordsAreEquals = user.password === user.confirmPassword;

  if (!passwordsAreEquals) return res.sendStatus(401);

  delete user.confirmPassword;
  user.password = bcrypt.hashSync(user.password, 10);

  req.user = user;
  next();
}

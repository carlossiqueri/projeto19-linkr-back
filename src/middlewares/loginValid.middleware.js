import loginSchema from "../schemas/login.schema.js";

export async function loginValid(req, res, next) {
  const user = req.body;
  const { error } = loginSchema.validate(user);

  if (error) return res.sendStatus(401);

  req.user = user;
  next();
}

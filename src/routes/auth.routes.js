import express from "express";
import { userValid } from "../middlewares/userValid.middleware.js";
import { userExistByEmailOrUsername } from "../middlewares/userExistByEmailOrUsername.middleware.js";
import { signIn, signUp, signOut } from "../controllers/auth.controller.js";
import { loginValid } from "../middlewares/loginValid.middleware.js";

const authRouter = express.Router();

authRouter.post("/signup", userValid, userExistByEmailOrUsername, signUp);
authRouter.post("/", loginValid, signIn);
authRouter.post("/signout", signOut)

export default authRouter;

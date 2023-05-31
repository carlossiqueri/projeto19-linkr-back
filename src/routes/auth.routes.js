import express from "express";
import { userValid } from "../middlewares/userValid.middleware.js";
import { userExistByEmailOrUsername } from "../middlewares/userExistByEmailOrUsername.middleware.js";
import { signIn, signUp } from "../controllers/auth.controller.js";
import { loginValid } from "../middlewares/loginValid.middleware.js";

const router = express.Router();

router.post("/signup", userValid, userExistByEmailOrUsername, signUp);
router.post("/", loginValid, signIn);

export default router;

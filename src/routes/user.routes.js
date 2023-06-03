import { Router } from "express";
import { userId } from "../controllers/userId.controller.js";

const userRouter = Router()

userRouter.get("/user/:id", userId)

export default userRouter

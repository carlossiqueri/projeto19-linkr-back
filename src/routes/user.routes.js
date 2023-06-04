import { Router } from "express";
import { userId, ListSearchUser } from "../controllers/userId.controller.js";

const userRouter = Router()

userRouter.get("/user/:id", userId)
userRouter.post("/users/list", ListSearchUser)

export default userRouter

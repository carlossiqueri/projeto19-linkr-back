import { Router } from "express";
import { userId, ListSearchUser } from "../controllers/userId.controller.js";
import { newFollow, verifyFollow } from "../controllers/follow.controller.js";
import { validateAuth } from "../middlewares/validateAuth.middleware.js";

const userRouter = Router();

userRouter.get("/user/:id", userId);
userRouter.post("/users/list", ListSearchUser);
userRouter.post("/user/:id/follow", validateAuth, newFollow);
userRouter.get(
  "/user/follow/:followedId/:followerId",
  validateAuth,
  verifyFollow
);

export default userRouter;

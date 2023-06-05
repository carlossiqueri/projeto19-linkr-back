import { Router } from "express";
import {
  getTimelineHashtags,
  newPost,
  timeline,
} from "../controllers/posts.controller.js";
import { validateSchema } from "../middlewares/validateSchema.middeware.js";
import { postSchema } from "../schemas/posts.schema.js";
import { validateAuth } from "../middlewares/validateAuth.middleware.js";

const postRouter = Router();
postRouter.post("/newPost", validateAuth, validateSchema(postSchema), newPost);
postRouter.get("/posts", validateAuth, timeline);
postRouter.post("/posts/like/:id", validateAuth, likePost);
postRouter.get("/hashtags", getTimelineHashtags);

export default postRouter;

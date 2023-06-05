import { Router } from "express";
import { likePost, newPost, timeline } from "../controllers/posts.controller.js";
import { validateSchema } from "../middlewares/validateSchema.middeware.js";
import { postSchema } from "../schemas/posts.schema.js";
import { validateAuth } from "../middlewares/validateAuth.middleware.js";

const postRouter = Router();
postRouter.post("/newPost", validateAuth, validateSchema(postSchema), newPost);
postRouter.get("/posts", timeline);
postRouter.post("/posts/like/:id", validateAuth, likePost);

export default postRouter;
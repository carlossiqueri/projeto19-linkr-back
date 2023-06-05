import { Router } from "express";
import { newPost, updatePostById } from "../controllers/posts.controller.js";
import { validateSchema } from "../middlewares/validateSchema.middeware.js";
import { postSchema } from "../schemas/posts.schema.js";
import { validateAuth } from "../middlewares/validateAuth.middleware.js";
import { deletePostById } from "../controllers/posts.controller.js";

const postRouter = Router();
postRouter.post("/newPost", validateAuth, validateSchema(postSchema), newPost);
postRouter.delete("/posts/:id", validateAuth, deletePostById);
postRouter.put("/posts/:id", validateAuth, updatePostById);

export default postRouter;
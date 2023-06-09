import { Router } from "express";
import {
  newPost,
  likePost,
  timeline,
  getTimelineHashtags,
  updatePostById,
  deletePostById,
  postComment,
  getComments,
} from "../controllers/posts.controller.js";
import { validateSchema } from "../middlewares/validateSchema.middeware.js";
import { commentSchema, postSchema } from "../schemas/posts.schema.js";
import { validateAuth } from "../middlewares/validateAuth.middleware.js";

const postRouter = Router();
postRouter.post("/newPost", validateAuth, validateSchema(postSchema), newPost);
postRouter.get("/posts", validateAuth, timeline);
postRouter.post("/posts/like/:id", validateAuth, likePost);
postRouter.get("/hashtags", getTimelineHashtags);
postRouter.delete("/posts/:id", validateAuth, deletePostById);
postRouter.put("/posts/:id", validateAuth, updatePostById);
postRouter.post(
  "/comments",
  validateAuth,
  validateSchema(commentSchema),
  postComment
);
postRouter.get("/comments/:postId", validateAuth, getComments);

export default postRouter;

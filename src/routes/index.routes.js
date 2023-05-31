import { Router } from "express";
import postRouter from "./posts.routes.js";

const router = Router();
router.use(postRouter);

export default router;

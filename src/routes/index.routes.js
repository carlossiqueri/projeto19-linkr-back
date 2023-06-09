import { Router } from "express"
import authRouter from "./auth.routes.js"
import userRouter from "./user.routes.js"
import postRouter from "./posts.routes.js";

const router = Router()

router.use(postRouter);
router.use(authRouter)
router.use(userRouter);


export default router
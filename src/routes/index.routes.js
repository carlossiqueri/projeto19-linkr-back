import { Router } from "express"
import authRouter from "./auth.routes.js"
import userRouter from "./user.routes.js"
import postRouter from "./posts.routes.js";

const router = Router()
router.use(authRouter)
router.use(userRouter)
router.use(postRouter);


export default router
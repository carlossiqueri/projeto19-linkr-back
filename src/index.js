import express from "express";
import cors from "cors";
import dotenv from "dotenv";
dotenv.config();

import authRouter from "./routes/auth.route.js";

const server = express();
server.use(cors());
server.use(express.json());
server.use(authRouter);

const port = process.env.PORT || 5000;
server.listen(port, () => console.log(`Server listen in PORT: ${port}`));

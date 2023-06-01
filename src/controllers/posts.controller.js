import { createPost } from "../repositories/posts.repository.js";

export async function newPost(req, res) {
  const { url, description } = req.body;
  const { user_id } = res.locals;

  try {
    const { rows: [result]} = await createPost(url, description, user_id);
    res.status(201).send(result);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

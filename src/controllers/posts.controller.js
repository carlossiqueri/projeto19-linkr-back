import { createPost, updatePost } from "../repositories/posts.repository.js";

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

export async function deletePostById(req, res){
  const {user_id} = res.locals;
  const {id} = req.params;
  try{
    await deletePost(id ,user_id);
    res.sendStatus(204);

  }catch(err){
    res.status(500).send(err.message);
  }
}

export async function updatePostById(req, res){
  const {id} = req.params;
  const {user_id} = res.locals;
  const { url, description } = req.body;

  try{
    await updatePost(url, description, id, user_id);
    res.sendStatus(200);

  } catch(err){
    res.status(500).send(err.message);
  }
}

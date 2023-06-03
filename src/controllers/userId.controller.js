import { ListPostsUser } from "../repositories/user.repository.js"

export async function userId(req, res) {
  const id = req.params.id
  console.log(id)

  try {
    const result = await ListPostsUser(id)
    res.status(201).send(result.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function SearchUser(req,res){
    
}

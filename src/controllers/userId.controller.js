import { ListPostsUser, ListSearch } from "../repositories/user.repository.js"

export async function userId(req, res) {
  const id = req.params.id
  console.log("user-id: " +id)

  try {
    const result = await ListPostsUser(id)
    res.status(201).send(result.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function ListSearchUser(req,res){
    const { searchValue} = req.body

    try{
      const consult = await ListSearch(searchValue)
      res.send(consult.rows).status(200)
    }
    catch(err){
      res.send(err.message).status(500)
    }
}

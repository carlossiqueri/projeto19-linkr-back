import { createPost, getPostsDB } from "../repositories/posts.repository.js";
import urlMetadata from "url-metadata";
import fetch from "node-fetch";
global.fetch = fetch;

export async function newPost(req, res) {
  const { url, description } = req.body;
  const { user_id } = res.locals;
  try {
    const metadata = await urlMetadata(url);
    const urlMeta = {
      url_title: metadata["og:title"],
      url_description: metadata["og:description"],
    };
    const url_picture= metadata["og:image"];
    const {
      rows: [result],
    } = await createPost(url, description, user_id, urlMeta, url_picture);
    res.status(201).send(result);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function timeline(req, res) {
  try {
    const timelinePosts = await getPostsDB();

    res.status(200).send(timelinePosts.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function likePost(req, res) {
  const { user_id } = res.locals
  const { id } = req.params

  try {

    const isFollowing = await db.query(`
            SELECT * FROM likes WHERE "user_id" = $1 AND "post_id" = $2
        `, [user_id, id])

        if(isFollowing.rowCount < 1) {
            await db.query(`
            INSERT INTO likes ("user_id", "post_id") VALUES ($1, $2)
            `, [user_id, id])

            return res.sendStatus(201)
        }

        await db.query(`
          DELETE FROM likes WHERE "user_id" = $1 AND "post_id" = $2
        `, [user_id, id])

  } catch (err) {
    res.status(500).send(err.message);
  }

}

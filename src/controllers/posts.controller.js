import { createPost, getPostsDB } from "../repositories/posts.repository.js";
import urlMetadata from "url-metadata";
import fetch from "node-fetch";
global.fetch = fetch;

export async function newPost(req, res) {
  const { url, description } = req.body;
  const { user_id } = res.locals;

  try {
    const {
      rows: [result],
    } = await createPost(url, description, user_id);
    res.status(201).send(result);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function timeline(req, res) {
  try {
    const timelinePosts = await getPostsDB();
/*     for (let i = 0; i < timelinePosts.rows.length; i++) {
    const url = timelinePosts.rows[i].url;
    await urlMetadata(url).then(
      (metadata) => {
        const {title, description, url, image} = metadata;

        const metaTimeline = timelinePosts.rows.map((t, index) => {
           if (index = i ){ 
            return {...timelinePosts.rows, url: {
              title, 
              description, 
              url, 
              image
            }}
          } 
          return t;
        })

        console.log(metaTimeline);

        }),
      (err) => {
        console.log(err);
      }
        
    } */

      res.status(200).send(timelinePosts.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

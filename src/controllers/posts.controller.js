import {
  createPost,
  updatePost,
  getHashtagsDB,
  getPostsDB,
  insertHashtagDB,
  insert_posts_hashtagsDB,
  deletePost,
  deleteLikes,
  deleteHashtags,
  insertComment,
  getAllComments,
  getNumberOfPostsDB,
  existRepost,
  startRepost
} from "../repositories/posts.repository.js";
import urlMetadata from "url-metadata";
import fetch from "node-fetch";
import { db } from "../config/database.js";
global.fetch = fetch;

export async function newPost(req, res) {
  const { url, description } = req.body;
  const { id: user_id } = res.locals.user;
  const hashtag = description.split(" ").filter((h) => h.startsWith("#"));

  // A quem for trabalhar no código a partir daqui:
  // Enquanto eu fazia esta feature, apenas eu e Deus sabíamos o que se passava no código.
  // Agora, apenas Deus sabe.
  // Boa sorte.
  // - Days

  // URL => Link metadata
  try {
    const metadata = await urlMetadata(url);
    const urlMeta = {
      url_title: metadata["og:title"],
      url_description: metadata["og:description"],
    };
    const url_picture = metadata["og:image"];

    const {
      rows: [result],
    } = await createPost(url, description, user_id, urlMeta, url_picture);

    // HASHTAGS
    for await (let name of hashtag) {
      const hashtag_result = await insertHashtagDB(name);
      const posts_hashtags = await insert_posts_hashtagsDB(
        hashtag_result.rows[0].id,
        result.id
      );
    }

    res.status(201).send(result);
  } catch (err) {
    console.log("cheguei aqui");
    console.log(err);
    res.status(500).send(err);
  }
}

export async function timeline(req, res) {
  const { username } = res.locals.user;
  const {page} = req.query;
  
 const newLimit = page * 10;


  try {
    const timelinePosts = await getPostsDB(newLimit);

    // verifica se o usuario logado deu like em alguma das postagens

    for (let i = 0; i < timelinePosts.rows.length; i++) {
      const obj = timelinePosts.rows[i];
      if (
        obj.liked_by &&
        Array.isArray(obj.liked_by) &&
        obj.liked_by.includes(username)
      ) {
        obj.isLiked = true;
      } else {
        obj.isLiked = false;
      }
    }


    res.status(200).send(timelinePosts.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function getTimelineCount(req, res) {
  try {
    const timelineCount = await getNumberOfPostsDB();
    const count = parseInt(timelineCount.rows[0].count)
    res.status(200).send(`${count}`)
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function getTimelineHashtags(req, res) {
  try {
    const timelineHashtag = await getHashtagsDB();

    res.status(200).send(timelineHashtag.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function likePost(req, res) {
  const { id: user_id } = res.locals.user;
  const { id } = req.params;

  try {
    const isFollowing = await db.query(
      `
            SELECT * FROM likes WHERE "user_id" = $1 AND "post_id" = $2
        `,
      [user_id, id]
    );

    if (isFollowing.rowCount < 1) {
      await db.query(
        `
            INSERT INTO likes ("user_id", "post_id") VALUES ($1, $2)
            `,
        [user_id, id]
      );

      return res.sendStatus(201);
    }

    await db.query(
      `
          DELETE FROM likes WHERE "user_id" = $1 AND "post_id" = $2
        `,
      [user_id, id]
    );
  } catch (err) {
    res.status(500).send(err.message);
  }
}


export async function deletePostById(req, res) {
  const { id: post_id } = req.params;
  const { id: user_id } = res.locals.user;

  try {
    await deleteHashtags(post_id);
    await deleteLikes(post_id);
    await deletePost(post_id, user_id);
    res.sendStatus(204);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function updatePostById(req, res) {
  const { id } = req.params;
  const { id: user_id } = res.locals.user;
  const { description } = req.body;

  try {
    await updatePost(description, id, user_id);
    res.sendStatus(200);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function postComment(req, res) {
  try {
    await insertComment(req.body);

    res.sendStatus(201);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function getComments(req, res) {
  const { postId } = req.params;

  try {
    const comments = await getAllComments(postId);

    res.send(comments.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
};

export async function reposts(req, res){
  const {id} = req.params;
  const { id: user_id} = res.locals.user;
  
  try{
    const alreadyReposts = await existRepost(id, user_id);
    if(alreadyReposts.rowCount === 0){
      await startRepost(id, user_id);
      return res.sendStatus(201);
    }
    return res.sendStatus(201);
    
  } catch(err){
    res.status(500).send(err.message);
  }
}


import {
  createPost,
  getHashtagsDB,
  getPostsDB,
  insertHashtagDB,
  insert_posts_hashtagsDB,
} from "../repositories/posts.repository.js";
import urlMetadata from "url-metadata";
import fetch from "node-fetch";
global.fetch = fetch;

export async function newPost(req, res) {
  const { url, description } = req.body;
  const { user_id } = res.locals;
  const hashtag = description.split(" ").filter((h) => h.startsWith("#"));

  // A partir daqui, enquanto eu fazia esta feature, apenas eu e Deus sabíamos o que se passava no código.
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
    res.status(500).send(err);
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

export async function getTimelineHashtags(req, res) {
  try {
    const timelineHashtag = await getHashtagsDB();

    res.status(200).send(timelineHashtag.rows);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

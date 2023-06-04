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

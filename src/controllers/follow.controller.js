import {
  existFollow,
  startFollowing,
  unfollow,
} from "../repositories/follow.repository.js";

export async function newFollow(req, res) {
  const { id: user_id } = res.locals.user;
  const { id } = req.params;

  try {
    const alreadyFollows = await existFollow(user_id, id);
    if (alreadyFollows.rowCount === 0) {
      await startFollowing(user_id, id);
      return res.sendStatus(201);
    }
    await unfollow(user_id, id);
    res.sendStatus(204);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

export async function verifyFollow(req, res) {
  const { followerId, followedId } = req.params;
  try {
    const verify = await existFollow(followedId, followerId);

    if (verify.rowCount) return res.send(true);

    res.send(false);
  } catch (err) {
    res.status(500).send(err.message);
  }
}

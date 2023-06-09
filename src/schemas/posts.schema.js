import Joi from "joi";

export const postSchema = Joi.object({
    url: Joi.string().uri().required(),
    description: Joi.string().max(200)
})

export const commentSchema = Joi.object({
  user_id: Joi.number().integer().required(),
  post_id: Joi.number().integer().required(),
  content: Joi.string().required(),
});

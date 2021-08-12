class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :anime_id, :user_id

end

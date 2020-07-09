class CommentSerializer < ActiveModel::Serializer
  # byebug
  attributes :id, :comment, :user_id, :recipient_id

end

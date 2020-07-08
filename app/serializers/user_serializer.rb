class UserSerializer < ActiveModel::Serializer
  # byebug
  attributes :id, :username, :avatar, :bio, :longitude, :latitude

end

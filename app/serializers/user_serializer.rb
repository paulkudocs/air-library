class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :img_url, :favorite_genre, :bio, :latitude, :longitude
end

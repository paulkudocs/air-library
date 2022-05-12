class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :genre, :isbn, :publisher
  has_one :user
end

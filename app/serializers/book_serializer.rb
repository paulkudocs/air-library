class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :genre, :publisher
  belongs_to :user
  has_many :reviews
end

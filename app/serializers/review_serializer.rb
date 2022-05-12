class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :book
  has_one :user
end

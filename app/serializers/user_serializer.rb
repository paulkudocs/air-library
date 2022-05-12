class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :books, :reviews

  def user_books
    object.books.map {|book| {title: book.title, author: book.author}}
  end
  def user_reviews
    object.reviews.map {|review| {title: review.book.title, author: review.book.author, body: review.book.body} }
  end
end

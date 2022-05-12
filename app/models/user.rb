class User < ApplicationRecord
  has_many :books
  has_many :reviews

  def filtered_books
    self.books.map { |book| {title: book.title, author: book.author} }
  end
end

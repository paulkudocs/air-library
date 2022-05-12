class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]
  # before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @books = Book.all
    render json: @books, include: [:user]
  end
end

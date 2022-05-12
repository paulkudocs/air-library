class UsersController < ApplicationController

  def index
    @users = User.all
    @users.map {|user| user.name }
    render json: @users, :include => [:reviews], :methods => [:filtered_books], :except=> [:password_digest]
  end
end

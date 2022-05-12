class UsersController < ApplicationController

  def index
    @users = User.all
    @users.map {|user| user.name }
    render json: @users, :include => [:reviews], :methods => [:filtered_books], :except=> [:password_digest]
  end

  def show
    @user = User.find(params[:id])
    render json: @user, :include => [:reviews], :methods => [:filtered_books], :except=> [:password_digest]
  end

  def create
    @user = User.new(user_params)
  end
end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(nick_name: params[:nick_name])
    if @user.save
      redirect_to root_path, notice: '登録しました'
    else
      render :new
    end

  end

  # private

  # def user_params
  #   params.require(:user).permit(:nick_name)
  # end
end

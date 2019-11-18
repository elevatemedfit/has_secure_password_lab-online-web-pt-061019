class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if
    params[:user][:password].nil? or params[:user][:password].empty?
    redirect_to '/new'
  else
    session[:user][:password] = params[:user][:password]
    redirect_to '/home'
  end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end

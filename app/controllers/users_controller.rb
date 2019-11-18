class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if
    params[:user][:name].nil? or params[:user][:name].empty?
    redirect_to '/new'
  else
    session[:name] = params[:name]
    redirect_to '/home'
  end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end

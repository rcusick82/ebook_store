class HomeController < ApplicationController
  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    redirect_to_root_path
  end

  

private
  def user_params
    params.require(:user).permit(:email, :name, :avatar)
  end
end

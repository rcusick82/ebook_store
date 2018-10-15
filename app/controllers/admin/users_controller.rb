class Admin::UsersController < ApplicationController
  def destroy
    User.find(params[:id]).delete
    redirect_to admin_users_path
  end
end

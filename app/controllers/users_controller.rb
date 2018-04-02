class UsersController < ApplicationController
  def index
    @users = Users.all
    if params[:search]
      @users = Users.search(params[:search]).order("created_at DESC")
    else
      @users = Users.all.order("created_at DESC")
    end
  end
  def show
    @users = User.find_by_email(params[:id])
  end
  def sign
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("last_sign_in_at")
    else
      @users = User.all.order("last_sign_in_at")
    end
  end
end

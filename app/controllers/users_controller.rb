class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("last_sign_in_at")
    else
      @users = User.all.order("last_sign_in_at")
    end
  end
end

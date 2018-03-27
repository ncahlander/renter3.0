class UsersController < ApplicationController
  def index
  end
  def show
  @user = User.find_by_email(params[:id])
end
end

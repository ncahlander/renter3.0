class ReviewsController < ApplicationController

  #before_action :authenticate_user!
#controller for all review related actions for the form
  def index
    @reviews = Review.all
    #provide ALL the reivew "objects"
  end

  #display content
  def show
    @review = Review.find(params[:id])
    #pass in params[:id] to get the :id parameter from the request
  end

  def new
    @review = Review.new
  end

  def edit
    @review = Review.find(params[:id])
  end

  #create action for ruby stuff
  def create
    @review = Review.new(reviews_params)

    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end
  #   @review = Review.new(reviews_params)
  #
  #   if @review.save
  #     redirect_to @review
  #   else
  #     render 'new'
  #   end
  # end

  def update
    @review = Review.find(params[:id])

    if @review.update(reviews_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  def destroy
  @review = Review.find(params[:id])
  @review.destroy

  redirect_to reviews_path
  end

  private
  def reviews_params
    params.require(:review).permit(:title, :text)
    #prevents wrongful assignment in database if fields off
  end
end

class CommentsController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.create(comment_params)
    redirect_to review_path(@review)
  end
#each request for a comment has to keep track of the article to which the comment is attached
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end

class CommentsController < ApplicationController
	def new
   @comment = Comment.new
  end

  def create
   @comment = Comment.new(comment_params)
   comment.travel_id = travel.id
   @comment.save
   redirect_to travel_path(travel)
  end

  def destroy
  end

  private

  def comment_params
   params.require(:comment).permit(:comment)
  end

end

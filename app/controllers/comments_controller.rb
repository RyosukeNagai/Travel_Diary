class CommentsController < ApplicationController
	def new
   @comment = Comment.new
   @travel = Travel.find(params[:travel_id])
  end

  def create
   travel = Travel.find(params[:travel_id])
   comment = current_user.comments.new(comment_params)
   comment.travel_id = travel.id
   comment.save
   redirect_to travel_path(travel)
  end

  def destroy
    comment = Comment.find(params[:id])
    travel = comment.travel
    comment.destroy
    redirect_to travel_path(travel)
  end

  private

  def comment_params
   params.require(:comment).permit(:comment)
  end
end


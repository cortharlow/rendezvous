class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.itinerary_id = params[:itinerary_id]

    @comment.save

    redirect_to itinerary_path(@comment.itinerary)
  end

  def comment_params
    params.require(:comment).permit(
      :author_name,
      :body
      )
  end
end

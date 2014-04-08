class CommentController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      render notnice_path
    end
  end

  def comment_params
    params.require(:comment).permit(
      :comment
    )
  end

end

class CommentsController < ApplicationController
  def new
    @comment = Comment.new(post_id: params[:post_id])
    render :new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user

    if @comment.save
      redirect_to post_url(@comment.post)
    else
      render @comment.errors.full_messages
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :parent_comment_id, :body)
  end

end
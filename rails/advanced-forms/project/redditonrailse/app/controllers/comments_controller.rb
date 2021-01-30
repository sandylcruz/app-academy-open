class Comments < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to 
    else
    end
  end

  def new
    @comment = Comment.new
    render :new
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :parent_comment_id)
  end

end
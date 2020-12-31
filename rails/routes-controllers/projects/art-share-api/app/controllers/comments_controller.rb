class CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def create
    artwork = Artwork.find_by(id: comment_params[:artwork_id])
    author = User.find_by(id: comment_params[:user_id])
    comment = Comment.new(artwork: artwork, author: author, body: comment_params[:body])

    if comment.save
      render json: comment
    else
      render json: comment.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id])

    if comment.nil?
      render json: { error: "not found" }, status: :not_found
    elsif comment.destroy
      head :no_content
    else
      render json: comment.errors.full_messages, status: :bad_request
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :artwork_id, :body)
  end
end
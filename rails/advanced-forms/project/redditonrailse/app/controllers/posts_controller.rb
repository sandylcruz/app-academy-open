class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)

    if @post.save
      render plain: "post saved"
      redirect_to post_url(@post)
    else
      render plain: "not saved"
      # render :new
    end
  end

  def new
    @post = Post.new
    render :new
  end

  def edit
    @post = Post.find_by(id: params[:id])
    render :edit
  end

  def update
    id = params[:id]
    @post = Post.find_by(id: params[:id])

    if @post.nil?
      redirect_to new_post_url
    elsif @post.update_attributes(post_params)
      redirect_to post_url(@post)
    else
      redirect_to new_post_url
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    if @post
      @subs = Sub.all
      render :show
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
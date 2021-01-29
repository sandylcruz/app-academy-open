class SubsController < ApplicationController
  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      render plain: "sub made"
      redirect_to sub_url(@sub)
    else
      render plain: @sub.errors.full_messages
      # render :new
    end
  end

  def new
    @sub = Sub.new
    render :new
  end

  def edit
    @sub = Sub.find_by(id: params[:id]) 
    render :edit
  end

  def update
    id = params[:id]
    @sub = Sub.find_by(id: params[:id])

    if @sub.nil?
      redirect_to new_sub_url
    elsif @sub.update_attributes(sub_params)
      redirect_to sub_url(@sub)
    else
      redirect_to new_sub_url
    end
  end

  def show
    @sub = Sub.find_by(id: params[:id])
    @posts = Post.all
    
    if @sub
      render :show
    end
  end

  def index
    @subs = Sub.all
    render :index
  end

  private

  def sub_params
    params.require(:sub).permit(:title, :description)
  end
end
class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params.require[:id])
    render json @cat
    if @cat
      render :show
    else
      redirect_to cats_url
    end
  end

  def new
    render :new
  end

  def create
  end
end
class CatsController < ApplicationController
  def index
    render json: Cat.all
  end

  def show
    cat = Cat.find_by(id: params.require(:id))
    
    if cat
      render json: cat
    else
      render json: { error: "not_found" }, status: not_found
    end
  end
end
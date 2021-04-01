class Api::BenchesController < ApplicationController
  def show
    @bench = Bench.find_by(id: params[:id])
    
    if @bench
      console.log(@bench)
      render :show
    else
      render json: ["bench not found"]
    end
  end

  def index
    @benches = Bench.all
  end

  def create
    @bench = Bench.new(bench_params)

    if @bench.save
      render "api/benches/id"
    else
      render json: ["Did not save bench"]
    end
  end

  private

  def bench_params
    params.require(:bench).permit(:lat, :lng)
  end

end
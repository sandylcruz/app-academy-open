class Benches < ApplicationController
  def index
    @bench = Bench.find_by(id: params[:id])
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
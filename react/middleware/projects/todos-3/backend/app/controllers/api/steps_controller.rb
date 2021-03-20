class Api::StepsController < ApplicationController
  def show
    render json Step.find_by(id: params[:id])
  end

  def index
    @steps = Step.all
    render json: @steps
  end

  def create
    @step = Step.new(step_params)

    if @step.save
      render json @step
    else
      render json @step.errors.full_messages, status: 422
    end
  end

  def update
    @step = step.find_by(id: params[:id])
  end

  def destroy
    @step step.find_by(id: params[:id])
    @step.destroy!
  end

  private

  def steps_params
    params.require(:steps).permit(:title, :description, :done)
  end

end
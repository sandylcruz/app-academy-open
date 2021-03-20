class Api::StepsController < ApplicationController
  def index
    @steps = Todo.find_by(id: params[:todo_id]).steps
    render json: @steps
  end

  def create
    @step = Step.new(step_params)

    if @step.save
      render json: @step
    else
      render json: @step.errors.full_messages, status: 422
    end
  end

  def update
    @step = Step.find_by(id: params[:id])
  end

  def destroy
    @step = Step.find_by(id: params[:id])
    @step.destroy!
  end

  private

  def step_params
    params.require(:step).permit(:title, :body, :todo_id, :done)
  end

end
class GoalsController < ApplicationController
  def new
    @goal = Goal.new
    render :new
  end

  def create
    @goal = Goal.new(goal_params)
    @goal.author = current_user

    if @goal.save
      redirect_to goal_url(@goal)
    else
      render @goal.errors.full_messages
    end
  end

  def index
    @goals = Goal.all
    render :index
  end

  def update
    @goal = Goal.find_by(id: params[:id])
    
    if @goal.nil?
      render :new
    elsif @goal.update_attributes(goal_params)
      redirect_to goal_url(@goal)
    else
      render @goal.errors.full_messages
      redirect_to goals_url
    end
  end

  def destroy
    @goal = Goal.find_by(id: params[:id])
  end

  def edit
    @goal = Goal.find_by(id: params[:id])
    render :edit
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description, :private, :completed)
  end
end
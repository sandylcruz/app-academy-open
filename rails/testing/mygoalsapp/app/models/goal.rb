class Goal < ApplicationRecord
  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      redirect_to goal_url(@goal)
    else
      render :new
    end
  end

  def new
    @goal = Goal.new
    render :new
  end

  def update
    @goal = Goal.find_by(id: params[:id])
    render :edit
  end

  def destroy
    @goal = Goal.find_by(id: params[:id])
  end

  def show
    @goals = Goal.all
    render :index
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :user_id, :description )
  end
end
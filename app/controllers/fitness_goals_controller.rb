class FitnessGoalsController < ApplicationController
  def index
    @fitness_goals = FitnessGoal.all
  end

  def show
    @fitness_goal = FitnessGoal.find(params[:id])
  end

  def new
    @fitness_goal = FitnessGoal.new
  end

  def create
    @fitness_goal = FitnessGoal.new(fitness_goal_params)

    if @fitness_goal.save
      redirect_to @fitness_goal
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def fitness_goal_params
    params.require(:fitness_goal).permit(:name, :description)
  end
end

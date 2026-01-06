class MetricsController < ApplicationController
  def show
    @fitness_goal = FitnessGoal.find(params[:fitness_goal_id])
    @metric = @fitness_goal.metrics.find(params[:id])
  end

  def new
    @fitness_goal = FitnessGoal.find(params[:fitness_goal_id])
    @metric = @fitness_goal.metrics.new
  end

  def create
    @fitness_goal = FitnessGoal.find(params[:fitness_goal_id])
    @metric = @fitness_goal.metrics.new(metric_params)

    if @metric.save
      redirect_to [ @fitness_goal, @metric ]
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def metric_params
    params.require(:metric).permit(
      :name,
      :metric_type,
      :unit,
      :sets,
      :reps,
      :weight,
      :target_value
    )
  end
end

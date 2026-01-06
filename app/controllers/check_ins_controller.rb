class CheckInsController < ApplicationController
  def new
    @fitness_goal = FitnessGoal.find(params[:fitness_goal_id])
    @metric = @fitness_goal.metrics.find(params[:metric_id])
    @check_in = @metric.check_ins.new
  end

  def create
    @fitness_goal = FitnessGoal.find(params[:fitness_goal_id])
    @metric = @fitness_goal.metrics.find(params[:metric_id])
    @check_in = @metric.check_ins.new(check_in_params)

    if @check_in.save
      redirect_to [ @fitness_goal, @metric ]
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def check_in_params
    params.require(:check_in).permit(
      :value,
      :sets,
      :reps,
      :weight,
      :checked_in_on,
      :notes
    )
  end
end

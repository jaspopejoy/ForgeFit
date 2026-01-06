class RemoveUserFromFitnessGoals < ActiveRecord::Migration[8.1]
  def change
    remove_reference :fitness_goals, :user, null: false, foreign_key: true
  end
end

class Metric < ApplicationRecord
  belongs_to :fitness_goal
  has_many :check_ins, dependent: :destroy

  after_create :create_baseline_check_in

  private

  def create_baseline_check_in
    return if sets.blank? && reps.blank? && weight.blank? && target_value.blank?

    check_ins.create(
      value: target_value,
      sets: sets,
      reps: reps,
      weight: weight,
      checked_in_on: Date.today,
      notes: "Baseline"
    )
  end
end

class CheckIn < ApplicationRecord
  belongs_to :metric

  validates :checked_in_on, presence: true
  validates :sets, :reps, :weight, presence: true, if: -> { metric.metric_type == "strength" }
  validates :value, presence: true, if: -> { metric.metric_type != "strength" }
end

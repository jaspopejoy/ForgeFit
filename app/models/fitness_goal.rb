class FitnessGoal < ApplicationRecord
  belongs_to :user
  has_many :metrics, dependent: :destroy
end

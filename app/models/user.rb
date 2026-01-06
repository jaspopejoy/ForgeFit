class User < ApplicationRecord
  has_many :fitness_goals, dependent: :destroy
end

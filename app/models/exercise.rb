class Exercise < ApplicationRecord
    validates :exercise, presence: true
  
    # belongs_to :user
    belongs_to:workouts
  
    accepts_nested_attributes_for :workouts
  end
  
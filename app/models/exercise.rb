class Exercise < ApplicationRecord
    validates :exercise, presence: true
  
    belongs_to :user
    has_many :workouts, through: :workout
  
    accepts_nested_attributes_for :workouts
  end
  
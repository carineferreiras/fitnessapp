class Workouts < ApplicationRecord
    has_many :exercise, dependent: :destroy
    has_many :workout_variant, through: :exercise
    accepts_nested_attributes_for :exercise
  
    validates :exercise_id, :muscle_group_name, presence: true
  end
  
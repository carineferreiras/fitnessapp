class Workout < ApplicationRecord
    has_many :exercises, dependent: :destroy
    has_many :workout_variants, through: :exercises
    accepts_nested_attributes_for :exercises
  
    validates :exercise_id, :muscle_group_name, presence: true
  end
  
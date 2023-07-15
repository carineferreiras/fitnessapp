class Workout < ApplicationRecord


    has_many :exercises, through: :workout_id
    has_many :workout_variants, through: :exercises_id
    accepts_nested_attributes_for :exercises_id
    validates :exercise_id, :muscle_group_name:,  presence: true
end

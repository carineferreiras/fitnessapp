class WorkoutVariant < ApplicationRecord
    validates :duration, :muscle_group_name, presence: true
  
    belongs_to :workout
    has_many :exercise
  end
  
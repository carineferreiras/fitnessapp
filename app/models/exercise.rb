class Exercise < ApplicationRecord
    # validates :exercise, presence: true
  

    belongs_to: workout
  
    # accepts_nested_attributes_for :workout
  end
  
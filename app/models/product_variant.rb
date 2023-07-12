class Workout < ApplicationRecord


    has_many :exercises, through: :workout
    
end

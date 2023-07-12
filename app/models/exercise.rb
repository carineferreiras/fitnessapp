class Exercise < ApplicationRecord

    validates :exercise_items, presence: true

    belongs_to :user
    has_many :exercise, through: workout

    accepts_nested_attributes_for :exercise
    
end

class Workout < ApplicationRecord
  
    validates :title, presence: true
    validates :description, presence: true
    validates :user_id, presence: true
    validates :muscle_group_name, presence: true
    validates :duration, presence: true
  
    has_many :exercises
  end
  

  
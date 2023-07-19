class ExerciseSerializer < ActiveModel::Serializer
  
  attributes :id, :duration, :user, :muscle_group_name

  has_many: exercise

  def exercise_id 
    self.object.id
  end 

  def user_name 
    "#{self.object.customer.firstname}  #{self.object.customer.lastname}"
  end 

 


end

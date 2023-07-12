class ExerciseSerializer < ActiveModel::Serializer
  
  attributes :exercise_id, :exercise_items

  def exercise_id 
    self.object.id
  end 

  def user_name 
    "#{self.object.customer.firstname}  #{self.object.customer.lastname}"
  end 

 


end

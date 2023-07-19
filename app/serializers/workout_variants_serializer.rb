class WorkoutVariantsSerializer < ActiveModel::Serializer

    attributes :title, :description
  
    def variant_id 
      "#{self.object.id}"
    end 
  
  end


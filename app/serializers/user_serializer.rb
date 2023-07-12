class UserSerializer < ActiveModel::Serializer
  attributes :user_id, :name, :email_address, :phone_number

  def user_id 
    self.object.id
  end 
  
  def name 
    "#{self.object.firstname} #{self.object.lastname}"
  end 
  
end

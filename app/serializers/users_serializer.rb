class UsersSerializer < ActiveModel::Serializer
  attributes :user_id, :name, :email_address, :phone_number

 
  
  def name 
    "#{self.object.firstname} #{self.object.lastname}"
  end 
  
end

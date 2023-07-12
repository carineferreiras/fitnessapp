class Users < ApplicationRecord
    
    has_secure_password

    validates :firstname, :lastname, presence: true
    validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_number, presence: true, uniqueness: true
    validates :password, length: { in: 6..20 }
    
    has_many :exercises , through: workout
    
end



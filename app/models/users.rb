class Users < ApplicationRecord
    

    has_secure_password

    validates :firstname, :lastname, :address, presence: true
    validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_number, presence: true, uniqueness: true
    
    #validations always required on create
    validates :password, :password_confirmation, length: { in: 8..30 }, presence: true, on: :create
    validates_strength_of :password, level: :strong, with: :email_address, on: :create

    # run these two validations. allow blank on updates
    validates :password, length: { in: 8..30 }, allow_blank: true, on: :update
    validates_strength_of :password, level: :strong, with: :email_address, allow_blank: true, on: :update
    
    has_many :exercises , through: workout_id

end



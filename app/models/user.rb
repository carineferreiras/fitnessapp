class User < ApplicationRecord
    has_secure_password
  
    validates :firstname, :lastname, :address, presence: true
    validates :email_address, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone_number, presence: true, uniqueness: true
  
    # Validations always required on create
    validates :password, :password_confirmation, length: { in: 8..30 }, presence: true, on: :create
    # validates_strength_of :password, level: :strong, with: :email_address, on: :create
  
    # Run these two validations. Allow blank on updates
    validates :password, length: { in: 8..30 }, allow_blank: true, on: :update
    # validates_strength_of :password, level: :strong, with: :email_address

  
    has_many :exercise, through: :workout
    private

    def password_strength
      validator = PasswordStrength::Validator.new(password)
      unless validator.valid?
        errors.add(:password, validator.humanized_error_message)
      end
    end
  end
  
class AdminUser < ApplicationRecord
    validate :strength_of_password

    def strength_of_password
      return if password.blank?
  
      unless password.match?(/\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+\z/)
        errors.add(:password, "must contain at least one uppercase letter, one lowercase letter, and one digit")
      end
    end

    has_secure_password
  
    # validates_strength_of :password, level: :strong
    # validates_presence_of :username
  end
  
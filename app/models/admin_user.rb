class AdminUser < ApplicationRecord
    has_secure_password
  
    validates_strength_of :password, level: :strong, with: :username
  end
  
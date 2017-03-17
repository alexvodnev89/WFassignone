class User < ActiveRecord::Base
   
    VALID_NAME = /\A[a-zA-Z]+\z/
    validates :firstName, presence: true, length: { maximum: 20}, format: { with: VALID_NAME }
    validates :lastName, presence: true, length: { maximum: 20}, format: { with: VALID_NAME }
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL }, uniqueness: { case_sensitive: false }
    has_secure_password
    
  
end

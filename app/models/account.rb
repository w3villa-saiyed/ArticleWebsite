class Account < ApplicationRecord
  before_save { self.email = email.downcase }
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :articles 
    has_many :comments    
    
    
end
# validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
#  validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, 
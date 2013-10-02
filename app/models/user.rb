class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :email, :password, 
  :password_confirmation

  has_many :projects

  validates :first_name, :last_name, :email, presence: true
  validates :password, presence: true, on: :create
  validates :password, confirmation: true
  
  validates :email, uniqueness: true
end

class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  include DeviseOnlyPassword
  include DeviseConfirmer

  attr_accessor :user_info
  validates_associated :user_info
  has_one :user_ifno
  
end

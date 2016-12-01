class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :lastname, :uniqueness => { :scope => [:firstname] }

  validates :lastname, :presence => true

  validates :lastname, :length => { :minimum => 1 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

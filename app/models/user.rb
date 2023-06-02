class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :properties, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :homeowner_reservations, through: :properties, source: :reservations
  has_many :favorites, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

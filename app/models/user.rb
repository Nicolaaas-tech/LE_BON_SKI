class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :materials, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :bookingsonmymaterial, through: :materials, source: :bookings
end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :material
  has_many :reviews, dependent: :destroy
end

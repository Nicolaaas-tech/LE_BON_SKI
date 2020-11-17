class Material < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :category, presence: true, inclusion: { in: ["ski", "snowboard", "luge"] }
end

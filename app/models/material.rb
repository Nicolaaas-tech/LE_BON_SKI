class Material < ApplicationRecord
  validates :category, presence: true, inclusion: { in: ["ski", "snowboard", "luge"] }

  belongs_to :user
  has_many :bookings
end

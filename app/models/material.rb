class Material < ApplicationRecord
  validates :category, presence: true, inclusion: { in: ["ski", "snowboard", "luge", "racket", "mono-ski"] }
  validates :size, presence: true, inclusion: { in: ["small", "medium", "large"] }
  validates :description, presence: true
  validates :localisation, presence: true
  validates :price, presence: true

  belongs_to :user
  has_many :bookings, dependent: :destroy
end

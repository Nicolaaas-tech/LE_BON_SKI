class Material < ApplicationRecord
  validates :category, presence: true, inclusion: { in: ["Ski", "Snowboard", "Luge", "Racket", "Mono-ski"] }
  validates :size, presence: true, inclusion: { in: ["Small", "Medium", "Large"] }
  validates :description, presence: true
  validates :localisation, presence: true
  validates :price, presence: true
  has_one_attached :photo

  belongs_to :user
  has_many :bookings, dependent: :destroy
end

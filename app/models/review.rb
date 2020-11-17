class Review < ApplicationRecord
  validates :rate, presence: true, inclusion: { in: [0..5] }

  belongs_to :booking
end

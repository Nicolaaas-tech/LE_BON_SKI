class Review < ApplicationRecord
  validates :rate, presence: true, inclusion: { in: [0,1,2,3,4,5] }

  belongs_to :booking
end

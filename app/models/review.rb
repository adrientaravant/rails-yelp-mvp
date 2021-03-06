class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }
  validates_type :rating, :integer
end

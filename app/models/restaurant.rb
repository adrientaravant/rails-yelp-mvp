class Restaurant < ApplicationRecord

 CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

 has_many :reviews, inverse_of: :restaurant, dependent: :destroy
 validates :name, :address, presence: true
 validates :category, inclusion: { in: CATEGORIES }


end

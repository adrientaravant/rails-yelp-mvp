class Restaurant < ApplicationRecord
 has_many :reviews, inverse_of: :restaurant, dependent: :destroy
 validates :name, :address, presence: true
 validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

end

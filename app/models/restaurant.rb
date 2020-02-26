class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: ["chinese", "italian", "japanese", "french", "belgian"]
#  A restaurant must have at least a name, an address and a category.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
end

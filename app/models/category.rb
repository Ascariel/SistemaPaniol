class Category < ApplicationRecord
  validates :nombre, uniqueness: true
  has_many :products
end

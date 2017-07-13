class Category < ApplicationRecord
  validates :nombre, uniqueness: true
  has_many :products
  belongs_to :provider
end

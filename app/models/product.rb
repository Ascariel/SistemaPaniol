class Product < ApplicationRecord
  has_many :solicitud_reservas
  belongs_to :category
end

class Product < ApplicationRecord
  # validate the product name
  validates :product_name, presence: true
end

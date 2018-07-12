class Order < ApplicationRecord
  
  # validates :subtotal, :tax, :total presence: true

  belongs_to :user
  # belongs_to :product
  has_many :carted_products
  has_many :products, through: :carted_products
end

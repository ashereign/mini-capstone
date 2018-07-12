class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

    has_secure_password
    has_many :orders
    has_many :carted_products
  

end

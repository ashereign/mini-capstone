class Product < ApplicationRecord

validates :name, presence: true, uniqueness: true
validates :price, presence: true
validates :price, numericality: { greater_than: 0 }
validates :description, length: { minimum: 2 }
validates :description, length: { maximum: 500 }
validates :description, presence: true 


has_many :category_products
has_many :categories, through: :category_products
has_many :carted_products
has_many :orders, through: :carted_products
belongs_to :supplier   #returns a supplier hash #assumes supplier_id foreign key exists
# def supplier
#   Supplier.find(supplier_id)
#   #returns a hash
# end

has_many :images
# has_many :orders


# def images
#     Image.where(product_id: id)
#     #.where returns and array
    
# end

def is_discounted? #? means will return t/f 
      price < 200
end

def tax
    price * 0.09
end

def total
  price + tax 
end

end

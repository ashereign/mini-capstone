class Product < ApplicationRecord


belongs_to :supplier   #returns a supplier hash #assumes supplier_id foreign key exists
# def supplier
#   Supplier.find(supplier_id)
#   #returns a hash
# end
has_many :images

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

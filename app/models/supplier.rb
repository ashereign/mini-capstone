class Supplier < ApplicationRecord

  # def products
  #   Product.where(supplier_id: id)
    #.where returns and array
    #idd is the id of supplier will call upon)
# end

has_many :products   # this replaces the above method, returns an array
#assumes product has a foreign key (supplier_id)

end

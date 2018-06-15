json.id product.id 
json.name product.name
json.price product.price
# json.image_url product.image_url
json.description product.description
json.tax product.tax
json.total product.total
json.categories product.categories 
# json.supplier product.supplier

json.supplier do
  # json.id product.supplier.id
  json.name product.supplier.name
  json.email product.supplier.email
  json.phone_number product.supplier.phone_number 
end

json.images do
json.array! product.images, partial: 'api/images/image', as: :image 
end

json.is_discounted product.is_discounted?

json.formatted do
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)

end
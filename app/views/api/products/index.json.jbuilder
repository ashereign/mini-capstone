# json.product_test_key "hello"

# json.all_products @products 
json.array! @products.each do |product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.description product.description
  json.image product.image_url 
  end
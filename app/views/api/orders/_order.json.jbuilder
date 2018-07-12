json.id order.id
# json.user_id order.user_id

# json.subtotal order.subtotal
# json.tax order.tax
# json.total order.total
# json.email order.user.email

json.products do 
  json.array! order.products, partial: 'api/products/product', as: :product
end

json.user_id order.user_id 
# json.user do 
# json.partial! order.user, partial: "api/users/user", as: :user
# end

json.formatted do
  json.subtotal number_to_currency(order.subtotal)
  json.tax number_to_currency(order.tax)
  json.total number_to_currency(order.total)
  # json.created_at order.friendly_created at 
end
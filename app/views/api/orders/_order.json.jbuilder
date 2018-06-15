json.id order.id
json.user_id order.user_id
json.product_id order.product_id
json.quantity order.quantity
json.subtotal order.subtotal
json.tax order.tax
json.total order.total
json.email order.user.email


json.formatted do
  json.subtotal number_to_currency(order.subtotal)
  json.tax number_to_currency(order.tax)
  json.total number_to_currency(order.total)
  # json.created_at order.friendly_created at 
end
json.partial! @order, partial: 'order', as: :order 

# json.formatted do
#   json.subtotal number_to_currency(@order.subtotal)
#   json.tax number_to_currency(@order.tax)
#   json.total number_to_currency(@order.total)
# end
class Api::OrdersController < ApplicationController

before_action :authenticate_user

def show
  order_id = params[:id]
  @order = Order.find(order_id)
  render "show.json.jbuilder"
end

def create
  # order_quantity = params[:quantity]
  # product_id = params[:product_id]
  # product = Product.findb_by(id: product_id)
  # calculated_subtotal = product.price * order_quantity.to_i 
@carted_products = CartedProduct.where(
    user_id: current_user.id,
    status: "carted")

calculated_subtotal = 0
  @carted_product.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity.to_i
    end

    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax 

@order = Order.create(
    user_id: current_user.id,
    calculated_subtotal: calculated_subtotal,
    calculated_tax: calculated_tax,
    calculated_total: calculated_total
    )

@carted_products.each do |carted_product|
  carted_product.update(status: "purchased", order_id: @order.id)
end
# @order.update(
#   subtotal: @order.calculated_subtotal, 
#   tax: @order.calculated_tax, 
#   total: @order.calculated_total)
  render "show.json.jbuilder"
    #creating new recipe hash, can still use 'show' file 
  end
end

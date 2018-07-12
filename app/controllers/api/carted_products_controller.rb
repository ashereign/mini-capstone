class Api::CartedProductsController < ApplicationController

before_action :authenticate_user 

def index
  @carted_products = CartedProduct.where(
    user_id: current_user.id,
    status: "carted")
   # @carted_products = current_user.carted_products.where(status: "carated")
end
  render 'index.json.jbuilder'





  def create
    @carted_product = CartedProduct.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
    )

    render "show.json.jbuilder"
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.update(status: "removed")
    render json: {message: "Carted Product removed"}
  end


end

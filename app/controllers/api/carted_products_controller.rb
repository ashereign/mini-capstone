class Api::CartedProductsController < ApplicationController


  def create
    @carted_product = CartedProduct.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
    )

    render "show.json.jbuilder"
  end
  
end

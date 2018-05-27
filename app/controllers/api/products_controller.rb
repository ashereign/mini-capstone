class Api::ProductsController < ApplicationController

  def product_action
    @products = Product.all 
    render 'products_view.json.jbuilder'
  end


end

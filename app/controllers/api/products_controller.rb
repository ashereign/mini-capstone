class Api::ProductsController < ApplicationController

  def products_action
    @products = Product.all 
    render 'products_view.json.jbuilder'
  end

  def product_action
    @product = Product.first
    render 'product_view.json.jbuilder'
  end

end

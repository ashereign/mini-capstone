class Api::ProductsController < ApplicationController

  def index
    @products = Product.all 
    render 'index.json.jbuilder'
  end

  def show
  product_id = params[:id]
  @product = Product.find_by(id: product_id)
  render "show.json.jbuilder"
  end

def create
  #create a new recipe?
  @product = Product.create(
    name: params[:name],
    price: params[:price], image_url: params[:image_url], description:params[:description])
  
  render "show.json.jbuilder"
  #creating new recipe hash, can still use 'show' file 
end

def update
  #find the product to update (in this case by url segment parameter)
  product_id = params[:id]
  @product = Product.find_by(id: product_id)
  #tell it what information to update
  # @product = Product.update(
  #   name: params[:name],
  #   price: params[:price], 
  #   image_url: params[:image_url], 
  #   description:params[:description])

  # can use CRUD method to save individual attributes too
  @product.name = params[:name] || @product.name
  @product.price = params[:price] || @product.price 
  @product.image_url = params[:image_url] || @product.image_url
  @product.description = params[:description] || @product.description
    
    # using the || so that if the user doesn't input anything, it won't update to 'nil' - user friendly 
    @product.save

    render "show.json.jbuilder"
end

def destroy
  product_id = params[:id]
  @product = Product.find_by(id: product_id)
  @product.destroy
  render json: {message: "Product successfully destroyed"}
end
  
end




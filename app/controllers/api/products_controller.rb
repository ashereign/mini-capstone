class Api::ProductsController < ApplicationController

before_action :authenticate_admin, except: [:index, :show]
  #want anyone to see index and show pages
  def index
    @products = Product.all

    name_search = params[:search]
    if name_search
      @products = Product.where("name LIKE ?", "%#{name_search}%")
    end

    if params[:price_sort]
      @products = @products.order(price: :asc)
    else
      @products = @products.order(id: :asc)
    end

    if params[:category]
      category = Category.find(name: params[:category])
      @products = category.products
    end
    #if we pass the category, we will get back all the projects associated with that category. 

    render 'index.json.jbuilder'

    @products = @products.order(:id) ||
    @produts = @products.sort_by(:price)
  end

def show
  product_id = params[:id]
  @product = Product.find_by(id: product_id)
  render "show.json.jbuilder"
end

def create
    #create a new recipe?
    @product = Product.new(
      name: params[:name],
      price: params[:price], 
      description: params[:description], 
      supplier_id: params[:supplier_id], 
      stock: params[:stock])

    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
    #creating new recipe hash, can still use 'show' file 
end

def update
    #find the product to update (in this case by url segment parameter)
    product_id = params[:id]
    @product = Product.find_by(product_id)#####################
    #tell it what information to update
    # @product = Product.update(
    #   name: params[:name],
    #   price: params[:price], 
    #   image_url: params[:image_url], 
    #   description:params[:description])

    # can use CRUD method to save individual attributes too
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price 
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
      
      # using the || so that if the user doesn't input anything, it won't update to 'nil' - user friendly 
    if @product.save
       render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.destroy
    render json: {message: "Product successfully destroyed"}
  end
end






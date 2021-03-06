Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do
    # get "/products_url" => "products#products_action"
    # get "/product_url" => "products#product_action"

    get "/products" => "products#index"
    get "products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"
    post "/carted_products" => "carted_products#create"
    get "/carted_products" => "carted_products#index"
    delete '/carted_products/:id' => 'carted_products#destroy'
  end

  post "/users" => "users#create"
 

end

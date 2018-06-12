require 'unirest'

# response = Unirest.get("http://localhost:3000/api/products_url").body

# puts JSON.pretty_generate(response)

#ruby runner.rb  to run in terminal 

#bonus
# params = {}
# puts "Enter product name"
# name = gets.chomp
# puts "Enter product price"
# price = gets.chomp
# puts "Enter product url"
# image_url = gets.chomp
# puts "Enter product description"
# description = gets.chomp

# params = {
#   # @name = name
#   name: name
#   price:  price
#   # @product.price = price 
#   image_url: image_url
#   description: description
# }

# response = Unirest.post("http://localhost:3000/api/products", parameters: params).body


# puts JSON.pretty_generate(response)

# puts response

# puts "what product would you like to update?"
# product_id = gets.chomp 

# params = {
#   name: "Macbook Air"
# }

# response = Unirest.patch("http://localhost:3000/api/products/#{product_id}", parameters: params).body

# puts JSON.pretty_generate(response)

# puts "what product would you like to destroy?"
# product_id = gets.chomp 

# response = Unirest.delete("http://localhost:3000/api/products/#{product_id}").body

# puts JSON.pretty_generate(response)



response = Unirest.post(
    "http://localhost:3000/users",
    parameters: {
      name: "Sue",
      email: "sue@email.com",
      password: "passy",
      password_confirmation: "passy"
    }
  )
  p response.body




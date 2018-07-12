
User.create!([
  {name: "Peter", email: "peter@email.com", password_digest: "$2a$10$mMyqRQPdEiwjWzzI4DiX1.1LZGNUIePFw2Nf0p1WcM3/dRFO263Ze", admin: true},
  {name: "Sue", email: "sue@email.com", password_digest: "$2a$10$i7wkqYzMAy.8Nt2mW9zUceP/INSPJrpVEpdsNXZF0/3NrPnlg.cYS", admin: true},
  {name: "Luke", email: "luke@gmail.com", password_digest: "$2a$10$JYXZ8Xv4V7L8Wjar3l5zQOhcW33u7Zo13Mh8uhj52AqpSnkBuCIly", admin: true},
  {name: "Zoey", email: "zoey@gmail.com", password_digest: "$2a$10$J174umzaMxOd88aEg7APuOIbgNgWH6xOwELOef8HLw8fY9U2DZ9Nm", admin: true},
  {name: "test", email: "test@test.com", password_digest: "$2a$10$ohzB60kDZVEreVSqqdDNeuJ94PVINGhYuqkfW2jfYv6/DbXMOl9va", admin: true}
])

Supplier.create!([
  {name: "Amazon", email: "amazonhq@gmail.com", phone_number: "2223334444"},
  {name: "Treehouse", email: "treehousehq@gmail.com", phone_number: "3334445555"},
  {name: "Boxes", email: "boxeshq@gmail.com", phone_number: "5556667777"}
])

Order.create!([
  {user_id: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: 2600.0, tax: nil, total: nil},
  {user_id: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 3, subtotal: 538.0, tax: 48.42, total: 586.42},
  {user_id: 3, subtotal: 495.0, tax: 44.55, total: 539.55},
  {user_id: 3, subtotal: 1500.0, tax: 135.0, total: 1635.0}
])

Product.create!([
  {name: "Macbook Air", price: "1500.0", description: "15 in. retina display 500gb", stock: true, supplier_id: 2},
  {name: "Canon Rebel T3i", price: "1000.0", description: "includes body and 1 50mm lens", stock: true, supplier_id: 3},
  {name: "Microsoft Surface Pro", price: "1300.0", description: "Surface Pro (newest version) Intel Core m3 / 128GB SSD / 4GB RAM", stock: true, supplier_id: 3},
  {name: "Amazon Echo", price: "100.0", description: "The next generation Amazon Echo connects to the Alexa Voice Service to let you play music, control smart home devices, make hands-free calls and text messages, and more. Enhanced far-field voice recognition lets Alexa hear you even when music's playing.", stock: true, supplier_id: 1},
  {name: "TI-84 Graphing Calculator", price: "99.0", description: "perfect for college courses!", stock: true, supplier_id: 2},
  {name: "Nest", price: "269.0", description: "IoT Home Thermostat", stock: true, supplier_id: 1},
  {name: "Test", price: "20.0", description: "test stuff", stock: nil, supplier_id: 1}
])

CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: 1, status: "carted", order_id: nil},
  {user_id: 2, product_id: 5, quantity: 1, status: "carted", order_id: nil},
  {user_id: 3, product_id: 8, quantity: 4, status: "carted", order_id: nil},
  {user_id: 3, product_id: 10, quantity: 2, status: "carted", order_id: nil},
  {user_id: 3, product_id: 8, quantity: 4, status: "removed", order_id: nil},
  {user_id: 3, product_id: 7, quantity: 2, status: "removed", order_id: nil},
  {user_id: 3, product_id: 1, quantity: 2, status: "removed", order_id: nil},
  {user_id: 3, product_id: 1, quantity: 2, status: "removed", order_id: nil},
  {user_id: 3, product_id: 1, quantity: 1, status: "removed", order_id: nil},
  {user_id: 3, product_id: 1, quantity: 1, status: "removed", order_id: nil},
  {user_id: 3, product_id: 2, quantity: 2, status: "removed", order_id: nil},
  {user_id: 3, product_id: 8, quantity: 4, status: "removed", order_id: nil},
  {user_id: 3, product_id: 7, quantity: 2, status: "removed", order_id: nil},
  {user_id: 3, product_id: 7, quantity: 2, status: "removed", order_id: nil}
])
Category.create!([
  {name: "IoT Home"},
  {name: "PCs"}
])


CategoryProduct.create!([
  {product_id: 1, category_id: 2}
])
Image.create!([
  {image_url: "https://s4827.pcdn.co/wp-content/uploads/2011/01/Macbook-Pro-201013.png", product_id: 1},
  {image_url: "https://shop.usa.canon.com/wcsstore/ExtendedSitesCatalogAssetStore/t3i_18-55_1_l.jpg", product_id: 2},
  {image_url: "https://static.buydig.com/Assets/Product/imagesnw400/07F5853465B2469594D9D50CB79E0B39.jpg", product_id: 2},
  {image_url: "https://s7d1.scene7.com/is/image/BedBathandBeyond/140825063158472p?$478$", product_id: 7},
  {image_url: "https://i5.walmartimages.com/asr/bd1e6dd6-b25a-424f-9ff7-491e663b37f9_1.68f1b26014580f0d5842989c83ee9c86.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF", product_id: 8},
  {image_url: "https://slimages.macysassets.com/is/image/MCY/products/0/optimized/8684220_fpx.tif?op_sharpen=1&wid=500&hei=613&fit=fit,1&$filtersm$", product_id: 10},
  {image_url: "https://images-na.ssl-images-amazon.com/images/I/612OuMs29eL._SX425_.jpg", product_id: 5}
])





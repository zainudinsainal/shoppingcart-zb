#Restaurant
restaurant0 = Restaurant.create!(stall_name: "Crave Nasi Lemak", stall_address: "1 Pasir Ris Central Street 3, White Sands Mall, Singapore 518457")
restaurant1 = Restaurant.create!(stall_name: "Aspirasi", stall_address: "304 Orchard Road #03-36/37, Lucky Plaza, Singapore 238863")
restaurant2 = Restaurant.create!(stall_name: "Jinjja Chicken", stall_address: "249 Victoria Street, Bugis Village, Singapore 188034")
restaurant3 = Restaurant.create!(stall_name: "Nene Chicken", stall_address: "1 Vista Exchange Green, #01-24, S138617")
restaurant4 = Restaurant.create!(stall_name: "The Ramen Stall", stall_address: "787 North Bridge Road, Singapore 198755")
restaurant5 = Restaurant.create!(stall_name: "Hei Sushi", stall_address: "28 Tai Seng Street #01-02, Singapore 534106")
restaurant6 = Restaurant.create!(stall_name: "Warong Kim", stall_address: "43 Joo Chiat Place, Singapore 427767, 427767, Singapore")
restaurant7 = Restaurant.create!(stall_name: "Streats Hong Kong Cafe", stall_address: "2 Jurong East St 21 #02-17/17A, IMM Building, Singapore 609601")

puts "8 restaurant created"

#-----------------------------------------------------------------------------------------------------------#

#Categories
halal = Category.create!(name: "Malay")
korean = Category.create!(name: "Korean")
japanese = Category.create!(name: "Japanese")
chinese = Category.create!(name: "Chinese")

puts "4 categories created"

#-----------------------------------------------------------------------------------------------------------#

#Halal
halal_product1 = [
  {name: "Kuning Fish Set", description: "Coconut rice with selar fish and sliced cucumbers" , price: '4.90'},
  {name: "Fish Fillet Set", description: "Noodles with dark sauce and sliced egg" , price: '5.90'},
  {name: "Chicken Swing Set", description: "Noodles with soup and potato ball" , price: '5.90'},
  {name: "Chicken Cutlet Set", description: "Flatten sliced chicken" , price: '5.90'},
  {name: "Nasi Royale Set", description: "Grilled chicken" , price: '6.90'},
  {name: "Chicken Wing", description: "Sides" , price: '1.80'},
  {name: "Nyonya Otah", description: "Sides" , price: '1.80'}
]

halal_product1.each do |p|
  product = restaurant0.products.create!(p)
  product.categories << halal
end

halal_product2 = [
  {name: "Roti John", description: "Coconut rice with selar fish and sliced cucumbers" , price: '3.50'},
  {name: "Kacang Pool", description: "Noodles with dark sauce and sliced egg" , price: '3.50'},
  {name: "Chicken Cutlet with Curry Sauce", description: "Noodles with soup and potato ball" , price: '5.00'},
  {name: "Chicken Cutlet with Masak Merah Sauce", description: "Flatten sliced chicken" , price: '5.00'},
  {name: "Chicken Cutlet with Lemak Chilli Padi Sauce", description: "Grilled chicken" , price: '4.50'},
  {name: "Sliced Beef with Soya Sauce", description: "Sides" , price: '5.00'},
  {name: "Sliced Beed with Sambal Sauce", description: "Sides" , price: '5.50'},
  {name: "Dory Fish with Sambal Sauce", description: "Sides/picked cucumber" , price: '5.00'}
]

halal_product2.each do |p|
  product = restaurant1.products.create!(p)
  product.categories << halal
end

puts "8 Halal foods created"

#-----------------------------------------------------------------------------------------------------------#

#korean
korean_product1 = [
  {name: "Jinjja Wings", description: "Best Selling!" , price: '7.90'},
  {name: "Jinjja Drumsticks", description: "Best Seller!" , price: '8.90'},
  {name: "Beef Bulgogi Kimbap", description: "Seaweed rice roll made with Bulgogi beef (US Ribeye), cheese, romaine lettuce, korean pickle and carrots" , price: '4.50'},
  {name: "Chicken Drumsticks Bap (Rice)", description: "2pcs Chicken Drumsticks with Rice" , price: '7.90'},
  {name: "Tofu Bibimsalad", description: "Medley of fresh vegetables topped with sweet potato noodles and crispy tofu bites." , price: '6.90'},
  {name: "Chicken Bibimsalad", description: "Medley of fresh vegetables topped with sweet potato noodles and crispy chicken chunks." , price: '7.90'},
  {name: "Seafood Mandu", description: "Korean dumpling with prawn and chives fillings." , price: '3.90'},
  {name: "Tteokbokki Fries", description: "Fries topped with Tteokbokki rice cake" , price: '3.50'},
  {name: "Chicken Luncheon Kimbap", description: "This is the all-time classic Kimbap. Seaweed rice roll filled with generous chunks of chicken luncheon, korean pickles, egg, cucumber and carrots." , price: '7.90'},
]
korean_product1.each do |p|
  product = restaurant2.products.create!(p)
  product.categories << korean
end

korean_product2 = [
  {name: "Wings & Stick Meal", description: "Chicken soup with chicken" , price: '10.50'},
  {name: "Nene Signature Pasta", description: "Mixed vegetables with white rice" , price: '11.50'},
  {name: "Tangy Tomato Pasta", description: "Stir fried vegetable with glass noodles" , price: '11.50'},
  {name: "Bap Burger", description: "Korean Pickled veg with noodles" , price: '7.90'},
]
korean_product2.each do |p|
  product = restaurant3.products.create!(p)
  product.categories << korean
end

puts "13 Korean foods created"

#-----------------------------------------------------------------------------------------------------------#

#Japanese
japan_product1 = [
  {name: "Shio Ramen", description: "Chicken broth ramen with vegetables lightly seasoned with salt" , price: '3.50'},
  {name: "Tonkotsu Ramen", description: "Pork broth ramen with sliced pork" , price: '5.50'},
  {name: "Miso Ramen", description: "Bean Paste broth ramen with seaweed" , price: '3.00'},
  {name: "Tonkatsu", description: "Pork Cutlet with white rice" , price: '.50'},
  {name: "Japanese Curry/Fish", description: "Curry with rice" , price: '3.50'},
  {name: "Japanese Curry/Pork", description: "Curry with rice" , price: '3.50'},
  {name: "Okonomiyaki", description: "Sides/Savoury Meat Pancake" , price: '2.50'},
  {name: "Mochi", description: "Sides/Sweet flour ball" , price: '1.50'},
  {name: "Sushi", description: "Sides/Salmon" , price: '1.50'},
  {name: "Sushi", description: "Sides/Ebi" , price: '1.50'},
  {name: "Onigiri", description: "Sides/Rice Ball" , price: '0.50'},
  {name: "Chawamushi", description: "Sides/Steamed Egg" , price: '0.50'}
]
japan_product1.each do |p|
  product = restaurant4.products.create!(p)
  product.categories << japanese
end

japan_product2 = [
  {name: "Shio Ramen", description: "Chicken broth ramen with vegetables lightly seasoned with salt" , price: '3.50'},
  {name: "Tonkotsu Ramen", description: "Pork broth ramen with sliced pork" , price: '5.50'},
  {name: "Miso Ramen", description: "Bean Paste broth ramen with seaweed" , price: '3.00'},
  {name: "Tonkatsu", description: "Pork Cutlet with white rice" , price: '.50'},
  {name: "Japanese Curry/Fish", description: "Curry with rice" , price: '3.50'},
  {name: "Japanese Curry/Pork", description: "Curry with rice" , price: '3.50'},
  {name: "Okonomiyaki", description: "Sides/Savoury Meat Pancake" , price: '2.50'},
  {name: "Mochi", description: "Sides/Sweet flour ball" , price: '1.50'},
  {name: "Sushi", description: "Sides/Salmon" , price: '1.50'},
  {name: "Sushi", description: "Sides/Ebi" , price: '1.50'},
  {name: "Onigiri", description: "Sides/Rice Ball" , price: '0.50'},
  {name: "Chawamushi", description: "Sides/Steamed Egg" , price: '0.50'}
]

japan_product2.each do |p|
  product = restaurant5.products.create!(p)
  product.categories << japanese
end

puts "13 Japanese foods created"

#-----------------------------------------------------------------------------------------------------------#

#Chinese
chinese_product1 = [
  {name: "Ban Mian", description: "Noodles with soup" , price: '3.50'},
  {name: "Zha Jiang Noodles", description: "Dry Noodles with Mince Meat" , price: '3.50'},
  {name: "Dao Siao Noodle", description: "Noodles with soup" , price: '3.50'},
  {name: "Braised Pork Rice", description: "Pork Rice" , price: '3.50'},
  {name: "Chinese Dumplings", description: "Sides" , price: '1.50'},
  {name: "Siew Mai", description: "Sides" , price: '1.50'},
]
chinese_product1.each do |p|
  product =restaurant6.products.create!(p)
  product.categories << chinese
end

chinese_product2 = [
  {name: "Ban Mian", description: "Noodles with soup" , price: '3.50'},
  {name: "Zha Jiang Noodles", description: "Dry Noodles with Mince Meat" , price: '3.50'},
  {name: "Dao Siao Noodle", description: "Noodles with soup" , price: '3.50'},
  {name: "Braised Pork Rice", description: "Pork Rice" , price: '3.50'},
  {name: "Chinese Dumplings", description: "Sides" , price: '1.50'},
  {name: "Siew Mai", description: "Sides" , price: '1.50'},
]
chinese_product2.each do |p|
  product =restaurant7.products.create!(p)
  product.categories << chinese
end

puts "6 Chinese foods created"

#-----------------------------------------------------------------------------------------------------------#

#Admin
Admin.create!(email: "admin@example.com" , password: "123123")

puts "1 default admin created"

#User
User.create!(email: "user@example.com", password: "123123", name:"user1", birthday: Date.new(1958, 6, 22), address:"Tanjong Pagar", gender: 0  )
User.create!(email: "user2@example.com", password: "123123", name:"user2", birthday: Date.new(1958, 5, 14), address:"Serangoon", gender: 1  )

puts "2 default user created"







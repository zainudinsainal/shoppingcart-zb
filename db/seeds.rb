#Restaurant
restaurant0 = Restaurant.create!(stall_name: "Craving Nasi Lemak", stall_address: "1 Pasir Ris Central Street 3, White Sands Mall, Singapore 518457")
restaurant1 = Restaurant.create!(stall_name: "Inspirasi", stall_address: "304 Orchard Road #03-36/37, Lucky Plaza, Singapore 238863")
restaurant2 = Restaurant.create!(stall_name: "Jeju Chicken", stall_address: "249 Victoria Street, Bugis Village, Singapore 188034")
restaurant3 = Restaurant.create!(stall_name: "Meme Chicken", stall_address: "1 Vista Exchange Green, #01-24, S138617")
restaurant4 = Restaurant.create!(stall_name: "The Raymond Stall", stall_address: "787 North Bridge Road, Singapore 198755")
restaurant5 = Restaurant.create!(stall_name: "Hi Sushi", stall_address: "28 Tai Seng Street #01-02, Singapore 534106")
restaurant6 = Restaurant.create!(stall_name: "Warong Lim", stall_address: "43 Joo Chiat Place, Singapore 427767, 427767, Singapore")
restaurant7 = Restaurant.create!(stall_name: "Streets Taiwan Cafe", stall_address: "2 Jurong East St 21 #02-17/17A, IMM Building, Singapore 609601")
restaurant8 = Restaurant.create!(stall_name: "Indian Cafe", stall_address: "5 Jurong West St 21 #02-175/176 Singapore 609005")

puts "9 restaurant created"

#-----------------------------------------------------------------------------------------------------------#

#Categories
halal = Category.create!(name: "Malay")
korean = Category.create!(name: "Korean")
japanese = Category.create!(name: "Japanese")
chinese = Category.create!(name: "Chinese")
indian = Category.create!(name: "Indian")
promotion = Category.create!(name: "Promotion")

puts "6 categories created"

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

puts "15 Halal foods created"

#-----------------------------------------------------------------------------------------------------------#

#korean
korean_product1 = [
  {name: "Jeju Wings", description: "Best Selling!" , price: '7.90'},
  {name: "Jeju Drumsticks", description: "Best Seller!" , price: '8.90'},
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
  {name: "Kimchi With Chicken Ramen", description: "Chicken broth ramen with vegetables lightly seasoned with salt" , price: '16.50'},
  {name: "Mushroom Ramen", description: "Musroom broth ramen with sliced chciken" , price: '14.90'},
  {name: "Chicken Cha-Shu Ramen", description: "Bean Paste broth ramen with seaweed" , price: '18.20'},
  {name: "Dry Ramen", description: "Beef Cutlet with white rice" , price: '9.50'},
  {name: "Abalone Seafood Ramen", description: "Curry with rice" , price: '2'},
  {name: "Kimchi with Minced Chicken", description: "Curry with rice" , price: '10.50'},
  {name: "Salmon Maki", description: "Sides/Savoury Meat Pancake" , price: '12.90'},
  {name: "Assorted Sushi", description: "Sides/Sweet flour ball" , price: '9.90'},
  {name: "Futomaki", description: "Sides/Salmon" , price: '1.50'},
  {name: "Sushi Dragon Maki", description: "Sides/Ebi" , price: '11.90'},
  {name: "Ungi Maki", description: "Sides/Rice Ball" , price: '14.90'},
  {name: "Torched Beef Sushi", description: "Sides/Steamed Egg" , price: '7.90'}
]
japan_product1.each do |p|
  product = restaurant4.products.create!(p)
  product.categories << japanese
end

japan_product2 = [
  {name: "Shio Ramen", description: "Chicken broth ramen with vegetables lightly seasoned with salt" , price: '13.50'},
  {name: "Managtsua", description: "Fish broth ramen with sliced beef" , price: '17.50'},
  {name: "Miso Ramen", description: "Bean Paste broth ramen with seaweed" , price: '13.00'},
  {name: "Japanese Curry/Fish", description: "Curry with rice" , price: '7.50'},
  {name: "Okonomiyaki", description: "Sides/Savoury Meat Pancake" , price: '4.50'},
  {name: "Mochi", description: "Sides/Sweet flour ball" , price: '3.50'},
  {name: "Sushi", description: "Sides/Salmon" , price: '1.90'},
  {name: "Sushi", description: "Sides/Ebi" , price: '2.80'},
  {name: "Onigiri", description: "Sides/Rice Ball" , price: '2.50'},
  {name: "Chawamushi", description: "Sides/Steamed Egg" , price: '2.50'}
]

japan_product2.each do |p|
  product = restaurant5.products.create!(p)
  product.categories << japanese
end

puts "22 Japanese foods created"

#-----------------------------------------------------------------------------------------------------------#

#Chinese
chinese_product1 = [
  {name: "Ban Mian", description: "Noodles with soup" , price: '4.50'},
  {name: "Zha Jiang Noodles", description: "Dry Noodles with Mince Meat" , price: '3.50'},
  {name: "Dao Siao Noodle", description: "Noodles with soup" , price: '3.50'},
  {name: "Crispy Roasted Chicken", description: "Chicken" , price: '3.50'},
  {name: "Chinese Dumplings", description: "Sides" , price: '1.50'},
  {name: "Siew Mai", description: "Sides" , price: '1.50'},
]
chinese_product1.each do |p|
  product =restaurant6.products.create!(p)
  product.categories << chinese
end

chinese_product2 = [
  {name: "Teriyaki Beef with Egg Fried Rice ", description: "Noodles with soup" , price: '11.50'},
  {name: "Nasi Gorneg With Satay", description: "Dry Noodles with Mince Meat" , price: '13.90'},
  {name: "XO Seafood Fried Rice", description: "Noodles with soup" , price: '10.80'},
  {name: "Macau Chicken Chop Fried Rice", description: "Steamed Sea Bass with Spicy Thai Sauce" , price: '10.30'},
  {name: "Curry Chicken With Rice", description: "Sides" , price: '11.50'},
  {name: "Tom Yum Seafood Soup", description: "Sides" , price: '15.50'},
]
chinese_product2.each do |p|
  product =restaurant7.products.create!(p)
  product.categories << chinese
end

puts "12 Chinese foods created"

#-----------------------------------------------------------------------------------------------------------#

#Indian

indian_product1 = [
  {name: "Chicken Briyani", description: "Noodles with soup" , price: '11.50'},
  {name: "Dal Makhani", description: "Dry Noodles with Mince Meat" , price: '13.90'},
  {name: "Dhokla", description: "Noodles with soup" , price: '10.80'},
  {name: "Medu Vada", description: "Steamed Sea Bass with Spicy Thai Sauce" , price: '10.30'},
  {name: "Naan", description: "Naan" , price: '2.50'},
  {name: "Roti Prata", description: "Sides" , price: '3.50'},
]
indian_product1.each do |p|
  product =restaurant8.products.create!(p)
  product.categories << indian
end

puts "6 indian foods created"

#-----------------------------------------------------------------------------------------------------------#

#Admin
Admin.create!(email: "admin@example.com" , password: "123123")

puts "1 default admin created"

#User
User.create!(email: "user@example.com", password: "123123", name:"user1", birthday: Date.new(1958, 6, 22), address:"Tanjong Pagar", gender: 0  )
User.create!(email: "user2@example.com", password: "123123", name:"user2", birthday: Date.new(1958, 5, 14), address:"Serangoon", gender: 1  )
User.create!(email: "user3@example.com", password: "123123", name:"user3", birthday: Date.new(1958, 5, 14), address:"Serangoon", gender: 0  )

puts "3 default user created"
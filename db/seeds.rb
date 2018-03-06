#Categories
halal = Category.create!(name: "Halal")
korean = Category.create!(name: "Korean")
japanese = Category.create!(name: "Japanese")
chinese = Category.create!(name: "Chinese")

puts "4 categories created"

#Halal
halal_product = [
  {name: "Nasi Lemak", description: "Coconut rice with selar fish and sliced cucumbers" , price: '2.50'},
  {name: "Mee Rubus", description: "Noodles with dark sauce and sliced egg" , price: '3.50'},
  {name: "Mee Soto", description: "Noodles with soup and potato ball" , price: '3.50'},
  {name: "Ayam Penyat", description: "Flatten sliced chicken" , price: '3.50'},
  {name: "Ayam Bakar", description: "Grilled chicken" , price: '4.50'},
  {name: "Potato Ball", description: "Sides" , price: '$0.50'},
  {name: "Wedges", description: "Sides" , price: '0.50'},
  {name: "Acar", description: "Sides/picked cucumber" , price: '0.50'}
]

halal_product.each do |p|
  product = Product.create!(p)
  product.categories << halal
end

puts "8 Halal foods created"

#korean
korean_product = [
  {name: "Ginseng Chicken Rice", description: "Chicken soup with chicken" , price: '5.50'},
  {name: "Bibibam", description: "Mixed vegetables with white rice" , price: '3.50'},
  {name: "Japchae", description: "Stir fried vegetable with glass noodles" , price: '4.50'},
  {name: "Kim Chi Ramen", description: "Korean Pickled veg with noodles" , price: '3.50'},
  {name: "Grilled BBQ Pork", description: "Good O' BBQ Pork" , price: '3.50'},
  {name: "Grilled BBQ Chicken", description: "Good O' BBQ Chicken" , price: '3.50'},
  {name: "Grilled BBQ Beef", description: "Good O' BBQ Beef" , price: '3.50'},
  {name: "Bulgogi/beef", description: "Sides/more good O' BBQ Beef" , price: '1.50'},
  {name: "Bulgogi/pork", description: "Sides/more good O' BBQ Pork" , price: '1.50'},
  {name: "Kim Chi", description: "Sides/Korean staple pickled cabbage" , price: '0.50'},
  {name: "Mandu", description: "Sides/Korean dumplings" , price: '1.50'},
  {name: "Gimbap", description: "Sides/Korean 'sushi' with seaweed" , price: '1.50'},
  {name: "Gimbap", description: "Sides/Fried Chicken not from KFC" , price: '1.50'}
]
korean_product.each do |p|
  product = Product.create!(p)
  product.categories << korean
end

puts "13 Korean foods created"

#Japanese
japan_product = [
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
  {name: "Gimbap", description: "Sides/Korean 'sushi' with seaweed" , price: '1.50'},
  {name: "Chawamushi", description: "Sides/Steamed Egg" , price: '0.50'}
]
japan_product.each do |p|
  product = Product.create!(p)
  product.categories << japanese
end

puts "13 Japanese foods created"

#Chinese
chinese_product = [
  {name: "Ban Mian", description: "Noodles with soup" , price: '3.50'},
  {name: "Zha Jiang Noodles", description: "Dry Noodles with Mince Meat" , price: '3.50'},
  {name: "Dao Siao Noodle", description: "Noodles with soup" , price: '3.50'},
  {name: "Braised Pork Rice", description: "Pork Rice" , price: '3.50'},
  {name: "Chinese Dumplings", description: "Sides" , price: '1.50'},
  {name: "Siew Mai", description: "Sides" , price: '1.50'},
]
chinese_product.each do |p|
  product = Product.create!(p)
  product.categories << chinese
end

puts "6 Chinese foods created"

#Admin
Admin.create!(email: "admin@example.com" , password: "123123")

puts "1 default admin created"








# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(name: "Halal")
Category.create!(name: "Korean")
Category.create!(name: "Japanese")
Category.create!(name: "Chinese")
#Halal
Product.create!(name: "Nasi Lemak", description: "Coconut rice with selar fish and sliced cucumbers" , price: '$2.50')
Product.create!(name: "Mee Rubus", description: "Noodles with dark sauce and sliced egg" , price: '$3.50')
Product.create!(name: "Mee Soto", description: "Noodles with soup and potato ball" , price: '$3.50')
Product.create!(name: "Ayam Penyat", description: "Flatten sliced chicken" , price: '$3.50')
Product.create!(name: "Ayam Bakar", description: "Grilled chicken" , price: '$4.50')
Product.create!(name: "Potato Ball", description: "Sides" , price: '$0.50')
Product.create!(name: "Wedges", description: "Sides" , price: '$0.50')
Product.create!(name: "Acar", description: "Sides/picked cucumber" , price: '$0.50')
#korean
Product.create!(name: "Ginseng Chicken Rice", description: "Chicken soup with chicken" , price: '$5.50')
Product.create!(name: "Bibibam", description: "Mixed vegetables with white rice" , price: '$3.50')
Product.create!(name: "Japchae", description: "Stir fried vegetable with glass noodles" , price: '$4.50')
Product.create!(name: "Kim Chi Ramen", description: "Korean Pickled veg with noodles" , price: '$3.50')
Product.create!(name: "Grilled BBQ Pork", description: "Good O' BBQ Pork" , price: '$3.50')
Product.create!(name: "Grilled BBQ Chicken", description: "Good O' BBQ Chicken" , price: '$3.50')
Product.create!(name: "Grilled BBQ Beef", description: "Good O' BBQ Beef" , price: '$3.50')
Product.create!(name: "Bulgogi/beef", description: "Sides/more good O' BBQ Beef" , price: '$1.50')
Product.create!(name: "Bulgogi/pork", description: "Sides/more good O' BBQ Pork" , price: '$1.50')
Product.create!(name: "Kim Chi", description: "Sides/Korean staple pickled cabbage" , price: '$0.50')
Product.create!(name: "Mandu", description: "Sides/Korean dumplings" , price: '$1.50')
Product.create!(name: "Gimbap", description: "Sides/Korean 'sushi' with seaweed" , price: '$1.50')
Product.create!(name: "Gimbap", description: "Sides/Fried Chicken not from KFC" , price: '$1.50')
#Japanese
Product.create!(name: "Shio Ramen", description: "Chicken broth ramen with vegetables lightly seasoned with salt" , price: '$3.50')
Product.create!(name: "Tonkotsu Ramen", description: "Pork broth ramen with sliced pork" , price: '$5.50')
Product.create!(name: "Miso Ramen", description: "Bean Paste broth ramen with seaweed" , price: '$3.00')
Product.create!(name: "Tonkatsu", description: "Pork Cutlet with white rice" , price: '$.50')
Product.create!(name: "Japanese Curry/Fish", description: "Curry with rice" , price: '$3.50')
Product.create!(name: "Japanese Curry/Pork", description: "Curry with rice" , price: '$3.50')
Product.create!(name: "Okonomiyaki", description: "Sides/Savoury Meat Pancake" , price: '$2.50')
Product.create!(name: "Mochi", description: "Sides/Sweet flour ball" , price: '$1.50')
Product.create!(name: "Sushi", description: "Sides/Salmon" , price: '$1.50')
Product.create!(name: "Sushi", description: "Sides/Ebi" , price: '$1.50')
Product.create!(name: "Sushi", description: "Sides/Egg" , price: '$1.50')
Product.create!(name: "Onigiri", description: "Sides/Rice Ball" , price: '$0.50')
Product.create!(name: "Chawamushi", description: "Sides/Steamed Egg" , price: '$0.50')
#Chinese
Product.create!(name: "Ban Mian", description: "Noodles with soup" , price: '$3.50')
Product.create!(name: "Zha Jiang Noodles", description: "Dry Noodles with Mince Meat" , price: '$3.50')
Product.create!(name: "Dao Siao Noodle", description: "Noodles with soup" , price: '$3.50')
Product.create!(name: "Braised Pork Rice", description: "Pork Rice" , price: '$3.50')
Product.create!(name: "Chinese Dumplings", description: "Sides" , price: '$1.50')
Product.create!(name: "Siew Mai", description: "Sides" , price: '$1.50')

Admin.create!(email: "example@gmail.com" , password: "123123")





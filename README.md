[![CircleCI](https://circleci.com/gh/zainudinsainal/shoppingcart-zb/tree/master.svg?style=svg)](https://circleci.com/gh/zainudinsainal/shoppingcart-zb/tree/master)

# Shopping-Cart Rails

This is a catering service shopping cart application. To visit this site, 
visit [Shopping Cart](https://shopping-cart-zb.herokuapp.com/)


# User stories
# Admin

As an admin, I can sign into my account to manage the catalog of products on sale
* I can view a list of products
* I can view details of a product
* I can create a product
* I can edit the details of a product
* I can delete a product

* As an administrator, I cannot sign up for an account (admin must be seeded)

* As an admin, I can sign into my account to manage the orders received
* I can view a list of pending orders
* I can change the status of an order
* Pending
* Completed (shipped)

# User

* As a user, I can sign up for an account
* As a user, I can sign in to view a catalog of products
* As a user, I can view details of a product
* As a user, I can add multiple products to my shopping cart.
* As a user, I can remove products from my shopping cart 
* As a user, I can change the quantity of a single product in the shopping cart
* As a user, I can log out/close my browser, and still retain the contents of my cart when I retain
* As a user, check out my shopping cart, and be redirected to a payment gateway to purchase my items
* As a user, after I have payment has successfully been received, I will receive an email notification to notify me that my order was received and confirmed.
* As a user, after payment, I will be redirected to an order confirmation page, to show details of my order

# Completed Bonus User Stories

* As a user, I can add multiple products to my shopping cart, regardless of whether I have logged in or not
* As a user, I can remove products from my shopping cart, regardless of whether I have logged in or not

# Getting Started

## Setup

1. Clone the application
```
git clone https://github.com/zainudinsainal/shoppingcart-zb.git
```

2. Run bundle
```
cd shopping-cart(if you are using code editor, Ctrl K + O into the git clone folder)
bundle install
```

3. Setup the database
```
rake db:create db:migrate db:seed
```

3. Run rails server
```
rails s
```
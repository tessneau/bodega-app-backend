# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cart.destroy_all
Item.destroy_all
Category.destroy_all


############# USERS #############
tess = User.create(username: "Tess", password: "boba")
daniela = User.create(username: "Daniela", password: "cats")

############# CARTS #############
tCart = Cart.create(user_id: tess.id)
dCart = Cart.create(user_id: daniela.id)

########### SHELVES ############
left = Shelf.create(name: "Left")
right = Shelf.create(name: "Right")

########### CATEGORIES ############
fruits = Category.create(name: "Fruits", shelf_id: left.id)
chips = Category.create(name: "Chips", shelf_id: left.id)
Category.create(name: "Canned Food", shelf_id: left.id)
Category.create(name: "Cereal", shelf_id: left.id)
drinks = Category.create(name: "Drinks", shelf_id: right.id)
Category.create(name: "Ice Cream", shelf_id: right.id)
Category.create(name: "Candy", shelf_id: right.id)
Category.create(name: "Gum", shelf_id: right.id)
Category.create(name: "Lottery Tickets", shelf_id: right.id)


############### ITEMS ###############
apple = Item.create(name: "Apple", description: "a delicious upstate NY red apple", price: 1.50, img_url: "https://images.vexels.com/media/users/3/145460/isolated/preview/d08a1157100d2e42f31b4a752e71c33b-apple-illustration-by-vexels.png", category_id: fruits.id)
banana = Item.create(name: "Banana", description: "full of potassium", price: 2.00, img_url: "http://res.publicdomainfiles.com/pdf_view/1/13488721229077.png", category_id: fruits.id)
lays = Item.create(name: "Potato Chips", description: "75% chips, 25% air", price: 0.50, img_url: "https://dumielauxepices.net/sites/default/files/potato-chips-clipart-kid-snack-726562-8555161.png", category_id: chips.id)
cola = Item.create(name: "Coca Cola", description: "an ice cold can", price: 1.50, img_url: "https://i.imgur.com/IqI4L0H.png", category_id: drinks.id)

############# CART ITEMS #############

tessCartItem = CartItem.create(cart_id: tCart.id, item_id: cola.id, name: cola.name, price: cola.price, img_url: cola.img_url)
CartItem.create(cart_id: tCart.id, item_id: apple.id, name: apple.name, price: apple.price, img_url: apple.img_url)
 CartItem.create(cart_id: tCart.id, item_id: banana.id, name: banana.name, price: banana.price, img_url: banana.img_url)
danielaCartItem = CartItem.create(cart_id: dCart.id, item_id: lays.id, name: lays.name, price: lays.price, img_url: lays.img_url)


puts "GOOD SEEDING MATE 🌱"

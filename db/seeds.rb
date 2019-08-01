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
cookie = Category.create(name: "Cookies", shelf_id: left.id)
chips = Category.create(name: "Chips", shelf_id: left.id)
can = Category.create(name: "Canned Food", shelf_id: left.id)
cereal = Category.create(name: "Cereal", shelf_id: left.id)
drinks = Category.create(name: "Drinks", shelf_id: right.id)
cream = Category.create(name: "Ice Cream", shelf_id: right.id)
candy = Category.create(name: "Candy", shelf_id: right.id)
other = Category.create(name: "Other", shelf_id: right.id)


############### ITEMS ###############
apple = Item.create(name: "Apple", description: "a delicious upstate NY red apple", price: 1.50, img_url: "https://batlow.com.au/wp-content/uploads/2018/02/BatlowProduct_752x752_RedDelicious-458x458.png", category_id: fruits.id)
banana = Item.create(name: "Banana", description: "full of potassium", price: 2.00, img_url: "https://i2.wp.com/mamadolson.com/wp-content/uploads/2019/07/banana-1425576_640.png?ssl=1", category_id: fruits.id)
lays = Item.create(name: "Potato Chips", description: "75% chips, 25% air", price: 0.50, img_url: "https://www.fritolay.com/images/default-source/blue-bag-image/lays-classic.png?sfvrsn=bd1e563a_2", category_id: chips.id)
cola = Item.create(name: "Coca Cola", description: "an ice cold can", price: 1.50, img_url: "https://www.nyasha.co.za/wp-content/uploads/2017/07/Coke-Can.png", category_id: drinks.id)
catFood = Item.create(name:"Yum Can", description: "good for you or your cat", price: 1.00, img_url: "http://www.1800whiskers.com/ProductImages/112614/lg_be6c38_whitefish%20n%20salmon.png" , category_id: can.id)
sour = Item.create(name: "Sour Patch Kids", description: "when you feeling sour", price: 1.00, img_url: "https://i5.walmartimages.com/asr/caa61c87-1979-42f9-bcc2-3757cfd0ffcd_2.44a65ab1f90f5bc0522610cc4b501fc1.png?odnHeight=450&odnWidth=450&odnBg=FFFFFF", category_id: candy.id)
jolly = Item.create(name: "Jolly Ranchers", description: "when you feeling jolly", price: 1.50, img_url: "https://www.hersheys.com/is/image/content/dam/smartlabelproductsimage/jollyrancher/00010700702302-0010.png?wid=570&hei=570&fmt=png-alpha", category_id: candy.id)
robin = Item.create(name: "Mini Robin Eggs", description: "when you feeling like a bird", price: 1.50, img_url: "https://cdn.influenster.com/media/product/image/b0f83939-3316-4a38-97af-199b2ad90bb9.png.750x750_q85ss0_progressive.png", category_id: candy.id)
hubba = Item.create(name: "Hubba Bubba Bubble Tape", description: "doubles as a measuring tool", price: 1.00, img_url: "https://cdn.influenster.com/media/product/image/722d27a9-78a9-4524-b03b-0613b96f9699.png.750x750_q85ss0_progressive.png", category_id: candy.id)
spicy = Item.create(name: "Doritos Spicy Nachos", description: "75% chips, 25% spice", price: 1.00, img_url: "https://www.fritolay.com/images/default-source/blue-bag-image/doritos-spicy-nacho.png?sfvrsn=9a4e563a_2", category_id: chips.id)
cool = Item.create(name: "Doritos Cool Ranch", description: "75% chips, 25% cool", price: 1.10, img_url: "https://www.fritolay.com/images/default-source/blue-bag-image/doritos-cool-ranch.png?sfvrsn=a64e563a_2", category_id: chips.id)
ben = Item.create(name: "Ben and Jerry's Americone Dream", description: "treat yo self", price: 3.50, img_url: "http://1.bp.blogspot.com/-tz8XZpks-Fc/U-UMZtHsC0I/AAAAAAAAA1w/Wb7EulzC8S0/s1600/AmeriCone-Dream-Container.png", category_id: cream.id)
chef = Item.create(name: "Chef Boyardee Ravioli", description: "the finest chef special", price: 2.00, img_url: "https://chefboyardee.com/sites/g/files/qyyrlu321/files/images/products/beef-ravioli-can-13003.png", category_id: can.id)
goya = Item.create(name: "Goya", description: "buy some for your mom", price: 2.00, img_url: "https://www.goya.com/media/1269/maria-cookies2.png?width=470", category_id: cookie.id)
arizona = Item.create(name: "Arizona Iced Tea", description: "you already know", price: 1.00, img_url: "https://cdn130.picsart.com/263528300020212.png?r1024x1024", category_id: drinks.id)
cig = Item.create(name: "Marlboro Cig", description: "when you need a break", price: 13.00, img_url: "https://www.kroger.com/product/images/large/front/0002820000801", category_id: other.id)
lottery = Item.create(name: "The Golden Ticket Lottery", description: "when you feeling lucky", price: 5.00, img_url: "https://i.pinimg.com/originals/87/00/ce/8700ce91d1b8e2d4733bac7cd1f768a1.png", category_id: other.id)
frost = Item.create(name: "Frosted Flakes", description: "they're grrreat", price: 5.00, img_url: "http://images.kglobalservices.com/www.kelloggs.com/en_us/product/product_4508506/kicproductimage-121045_ffbluenew.png", category_id: cereal.id)
oats = Item.create(name: "Oats & More", description: "more", price: 6.00, img_url: "https://www.nestle-cereals.com/uk/sites/g/files/qirczx211/f/styles/scale_312/public/product_gallery/almond_oats_more_426g.png?itok=YEON02o7", category_id: cereal.id)
loops = Item.create(name: "Froot Loops", description: "50% froot, 50% loop", price: 5.00, img_url: "https://cdn.influenster.com/media/product/image/476be761-3f8f-42d7-acb6-d4398842c91e.png.750x750_q100.png", category_id: cereal.id)
haa = Item.create(name: "Haagen Dazs Caramel Cone", description: "treat yo self again", price: 5.00, img_url: "https://i.pinimg.com/originals/91/7a/a9/917aa99d50735c00c5b32c7eaa53b5f9.png", category_id: cream.id)
big = Item.create(name: "Blue Bunny Ice Cream", description: "a big treat yo self day", price: 6.00, img_url: "https://wellsmanagedcontent.blob.core.windows.net/products/blue-bunny/vanilla-bean.v5.png ", category_id: cream.id)
############# CART ITEMS #############

tessCartItem = CartItem.create(cart_id: tCart.id, item_id: cola.id, name: cola.name, price: cola.price, img_url: cola.img_url)
CartItem.create(cart_id: tCart.id, item_id: apple.id, name: apple.name, price: apple.price, img_url: apple.img_url)
 CartItem.create(cart_id: tCart.id, item_id: banana.id, name: banana.name, price: banana.price, img_url: banana.img_url)
danielaCartItem = CartItem.create(cart_id: dCart.id, item_id: lays.id, name: lays.name, price: lays.price, img_url: lays.img_url)


puts "GOOD SEEDING MATE 🌱"

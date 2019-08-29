class UserSerializer < ActiveModel::Serializer
  attributes :user, :current_cart, :previous_cart

  def user
    {id: object.id,
     username: object.username,
     wallet: object.wallet}
  end

  def current_cart
    {id: object.carts.last.id,
     total_price: object.carts.last.total_price,
     items: object.carts.last.cart_items.map{|item| {id: item.id, name: item.name, img_url: item.img_url, price: item.price}}}
  end

  def previous_cart
    {id: object.carts[-2].id,
     total_price: object.carts[-2].total_price,
     items: object.carts[-2].cart_items.map{|item| {id: item.id, name: item.name, img_url: item.img_url, price: item.price}}}
  end

end

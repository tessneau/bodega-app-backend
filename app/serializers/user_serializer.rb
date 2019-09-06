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
     items: object.carts.last.cart_items.map{|item| {id: item.id, name: item.name, description: item.item.description, img_url: item.item.img_url, price: item.price}}}
  end

  def previous_cart
    {id: object.carts[-1].id,
     total_price: object.carts[-1].total_price,
     items: object.carts[-1].items}
  end

end

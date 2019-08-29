class CartSerializer < ActiveModel::Serializer
  attributes :id, :total_price, :items

  def items
    object.cart_items
  end

end

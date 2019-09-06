class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :cart_id, :item_id, :name, :img_url, :price
end

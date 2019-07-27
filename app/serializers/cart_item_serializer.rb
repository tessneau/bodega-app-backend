class CartItemSerializer < ActiveModel::Serializer
  attributes :id
  has_one :cart
  has_one :item
end

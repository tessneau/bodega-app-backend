class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :img_url
  # has_one :category
end

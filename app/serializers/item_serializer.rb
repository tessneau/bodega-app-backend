class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :img_url
  has_one :category
  has_one :shelf

  def shelf
    object.category.shelf
  end
end

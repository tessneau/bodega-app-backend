class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :items
  has_one :shelf
  has_many :items
end

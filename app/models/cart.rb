class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy
  has_many :items, through: :cart_items

  def new_total
    prices = self.items.map {|item| item.price}
    prices.inject(0, :+)
  end
  
end

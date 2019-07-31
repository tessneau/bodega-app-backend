class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.string :name
      t.string :img_url
      t.decimal :price, precision: 10, scale: 2, default: 0.00
      t.references :cart, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end

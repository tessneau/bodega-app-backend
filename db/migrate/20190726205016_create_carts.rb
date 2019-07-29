class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.decimal :total_price, precision: 10, scale: 2, default: 0.00
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :total_price, default: 0
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

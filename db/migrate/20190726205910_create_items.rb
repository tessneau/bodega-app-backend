class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2, default: 0.00
      t.string :img_url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

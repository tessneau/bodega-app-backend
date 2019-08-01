class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :price, default: 0
      t.string :img_url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

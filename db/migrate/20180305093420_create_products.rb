class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :price, null: false, precision: 10, scale: 2
      t.text :description, null: false
      t.string :image, default: ""
      t.timestamps
    end
  end
end

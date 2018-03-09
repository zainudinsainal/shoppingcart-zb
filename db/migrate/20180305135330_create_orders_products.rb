class CreateOrdersProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :orders_products do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity, null: false
      t.timestamps
    end
    add_index :orders_products, [:order_id, :product_id], unique: true
  end
end

class CreateOrdersProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :orders_products do |t|
      t.references :order, foreigh_key: true
      t.references :product, foreigh_key: true

      t.timestamps
    end
    add_index :orders_products, [:order_id, :product_id], unique: true
  end
end

class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :status, default: 0
      t.date :order_date, null: false
      t.string :total_price, null: false
      t.bigint :order_num, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

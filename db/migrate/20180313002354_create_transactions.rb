class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true
      t.string :payment_method
      t.string :payment_status
      t.decimal :payment_amount
      t.string :payment_type
      t.string :payment_response

      t.timestamps
    end
  end
end

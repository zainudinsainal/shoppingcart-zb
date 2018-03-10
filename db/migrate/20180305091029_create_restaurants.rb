class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :stall_name, null: false
      t.text :stall_address, null: false
      t.string :picture
      t.timestamps
    end
  end
end

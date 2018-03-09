class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :stall_name
      t.text :stall_address
      t.date :founded_date
      t.timestamps
    end
  end
end

class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.belongs_to :product, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end

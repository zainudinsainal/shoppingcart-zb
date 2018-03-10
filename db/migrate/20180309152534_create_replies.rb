class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.text :body, null: false
      t.references :user, foreign_key: true
      t.references :review, foreign_key: true            
      t.timestamps
    end
  end
end

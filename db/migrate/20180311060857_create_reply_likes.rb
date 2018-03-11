class CreateReplyLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :reply_likes do |t|

      t.timestamps
    end
  end
end

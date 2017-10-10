class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    drop_table :posts

    create_table :posts do |t|
      t.text :content
      t.integer :group_id
      t.integer :user_id

      t.timestamps
    end
  end
end

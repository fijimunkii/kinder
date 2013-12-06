class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user
      t.integer :related_user_id
      t.boolean :is_match

      t.timestamps
    end
    add_index :likes, :user_id
  end
end

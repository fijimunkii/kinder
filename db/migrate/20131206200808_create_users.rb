class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fb_id
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.string :email
      t.text :bio
      t.string :img_url

      t.timestamps
    end
  end
end

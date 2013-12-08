class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fb_id
      t.string :oauth_token
      t.string :provider
      t.datetime :oauth_expires_at
      t.string :email
      t.string :name
      t.string :img_url
      t.string :birthday
      t.string :location
      t.text :bio

      t.timestamps
    end
  end
end

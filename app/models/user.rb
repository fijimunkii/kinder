class User < ActiveRecord::Base
  has_many :likes
  attr_accessible :bio, :email, :fb_id, :img_url, :oauth_expires_at, :oauth_token
end

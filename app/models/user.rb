class User < ActiveRecord::Base
  has_many :likes
  attr_accessible :bio, :email, :fb_id, :img_url, :oauth_expires_at, :oauth_token

  def self.from_omniauth(auth)
    User.where(fb_id: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.fb_id = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.birthday = auth.extra.raw_info.birthday if auth.extra.raw_info.birthday
      user.img_url = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def like(related_user_id)
    Like.create(user_id: self.id, related_user_id: related_user_id)
    self.is_match?(related_user_id)
  end

  def is_match?(related_user_id)
    test_match = Like.where(user_id: related_user_id, related_user_id: self.id)
    orig_match = Like.where(user_id: self.id, related_user_id: related_user_id)

    test = test_match.length == 1

    if test
      test_match[0].update_attributes(is_match: true)
      orig_match[0].update_attributes(is_match: true)
    end

    return test
  end
end

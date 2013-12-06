OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['KINDER_FACEBOOK_KEY'], ENV['KINDER_FACEBOOK_SECRET']
end

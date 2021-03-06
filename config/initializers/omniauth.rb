Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['KINDER_FACEBOOK_KEY'], ENV['KINDER_FACEBOOK_SECRET'], {:provider_ignores_state => true}
end

# OmniAuth error handling http://stackoverflow.com/a/11256549/2474735
OmniAuth.config.on_failure = UsersController.action(:oauth_failure)

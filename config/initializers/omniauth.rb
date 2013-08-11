require 'omniauth-openid'

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_id, name: 'google',
    identifier: 'https://google.com/accounts/o8/site-xrds?hd=litmus.com'
end

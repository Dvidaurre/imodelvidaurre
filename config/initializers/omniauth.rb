OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK_ID, FACEBOOK_SECRET , {client_options: {ssl: {ca_file: Rails.root.join('lib/assets/cacert.pem').to_s}}}
end
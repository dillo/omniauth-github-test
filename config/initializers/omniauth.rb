Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET'], {
      scope: 'user:email',
    #   provider_ignores_state: true
    }
  end
  
  OmniAuth.config.allowed_request_methods = %i[get post]
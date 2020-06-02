Rails.application.routes.draw do
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth',
      controllers: {
              registrations: 'devise_token_auth_extend/user_registrations',
      },
      skip: [:omniauth_callbacks]
    end
  end
end
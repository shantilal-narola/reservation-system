Rails.application.routes.draw do
  devise_for :users,:controllers => { :omniauth_callbacks => "user/omniauth_callbacks" }
  devise_for(   :admins,controllers: {
                  sessions:  'admins/sessions',
                  passwords: 'admin_users/passwords'
                },
                path: 'admin'
            )
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "home#index"
   mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end

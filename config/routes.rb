Rails.application.routes.draw do

  # resources :skills
  namespace :api do
    namespace :v1 do
      resources :users
      resources :campaign
      post '/login', to: 'auth#log_in'
      get '/loggedIn', to: 'auth#show'
    end
  end
  post '/back_campaign', to: 'user_campaigns#back_campaign' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

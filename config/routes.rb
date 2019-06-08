Rails.application.routes.draw do

  # resources :skills
  namespace :api do
    namespace :v1 do
      resources :users
      resources :campaign
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

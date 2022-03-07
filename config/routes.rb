Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :v1 do 
      resources :forms
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    devise_for :users,
    controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
    }
  get '/member-data', to: 'members#show'
  # Defines the root path route ("/")
  # root "articles#index"
end

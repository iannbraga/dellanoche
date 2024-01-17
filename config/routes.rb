Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :eventos
  
  get 'index', to: 'pages#index'

  # Defines the root path route ("/")
  root "eventos#index"
end

Rails.application.routes.draw do
  resources :eventos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "eventos#index"
end

Rails.application.routes.draw do
  devise_for :usuarios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :eventos
  
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'index', to: 'pages#index', as: :index
  get 'fonts', to: 'pages#fonts', as: :fonts

  # Defines the root path route ("/")
  root "eventos#index"
end

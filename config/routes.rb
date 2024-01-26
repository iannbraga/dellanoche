Rails.application.routes.draw do
  get 'usuarios/new'
  get 'usuarios/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  devise_for :usuarios, skip: :registrations

  resources :usuarios, only: %i[ new create ]
  
  resources :eventos

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'index', to: 'pages#index', as: :index
  get 'fonts', to: 'pages#fonts', as: :fonts

  # Defines the root path route ("/")
  root "eventos#index"
end

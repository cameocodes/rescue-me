Rails.application.routes.draw do
  resources :pets
  resources :profiles
  root 'pages#index'

  get '/surrender', to: 'pages#surrender'

  get '/faq', to: 'pages#faq'

  get '/contact', to: 'pages#contact'

  get '/rescuedirectory', to: 'pages#rescuedirectory'

  get '/dashboard', to: 'pages#dashboard'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

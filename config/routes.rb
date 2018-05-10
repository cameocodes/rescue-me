Rails.application.routes.draw do
  resources :pets
  resources :profiles, except: :index
  resources :charges, only: [:new, :create, :index],  :path => 'donate'
  post 'charge', to: 'charges#charge'

  root 'pages#index'

  get '/surrender', to: 'pages#surrender'
  get '/faq', to: 'pages#faq'
  get '/contact', to: 'pages#contact'
  get '/rescuedirectory', to: 'pages#rescuedirectory'
  get '/dashboard', to: 'pages#dashboard'
  get '/apply/:id', to: 'pages#apply', as: 'apply'
  get '/contact', to: 'pages#contact'
  post '/contact', to: 'pages#contact_email'
  post '/apply/:id', to: 'pages#send_application'
  get '/donate', to: 'pages#donate'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

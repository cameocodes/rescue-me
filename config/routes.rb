Rails.application.routes.draw do
  resources :profiles
  root 'pages#index'

  get '/surrender', to: 'pages#surrender'

  get '/faq', to: 'pages#faq'

  get '/contact', to: 'pages#contact'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  root to: "emails#index"
  resources :tasks, except: [:show], defaults: {format: 'js'}
  resources :home
  resources :emails, defaults: {format: 'js'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

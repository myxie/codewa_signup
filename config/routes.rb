Rails.application.routes.draw do
  resources :signups, only: [:new, :create]
  root 'signups#new'
  get 'signups', to: 'signups#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

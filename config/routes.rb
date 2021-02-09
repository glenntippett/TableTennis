Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bookings, only: %i[new create index destroy]

  resources :posts, only: %i[new create]

end

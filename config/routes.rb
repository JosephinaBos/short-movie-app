Rails.application.routes.draw do
  Rails.application.routes.draw do
    devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  end
  resources :movies

  resources :wishlist_movies, only: [:index, :new, :create, :destroy]
  resources :downloads, only: [:index, :new, :create, :destroy]

  root to: 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

devise_for :users,
    controllers: {
      omniauth_callbacks: 'users/omniauth_callbacks',
      registrations: 'registrations' }

  resources :movies do
    resources :wishlist_movies, only: [:index, :new, :create, :destroy]
    resources :downloads, only: [:index, :new, :create, :destroy]
  end

  resources :genres, except: :show

  root to: 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'movies/index'

  get 'movies/show'

  get 'movies/new'

  get 'movies/create'

  get 'movies/edit'

  get 'movies/update'

  get 'movies/destroy'

  get 'downloads/index'

  get 'downloads/new'

  get 'downloads/create'

  get 'downloads/destroy'

  get 'wishlist_movies/index'

  get 'wishlist_movies/new'

  get 'wishlist_movies/create'

  get 'wishlist_movies/destroy'

  get 'wishlist_movie/index'

  get 'wishlist_movie/new'

  get 'wishlist_movie/create'

  get 'wishlist_movie/destroy'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

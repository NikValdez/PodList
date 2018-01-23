Rails.application.routes.draw do
  # resources :playlists, only: [:index]

  get 'podcasts/search'
  root 'podcasts#search'

end

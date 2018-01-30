Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

  # resources :playlists, only: [:index]

  get 'podcasts/search'
  root 'podcasts#reload'

end

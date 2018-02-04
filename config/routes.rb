Rails.application.routes.draw do
  get 'pages/home'
  get 'podcasts/reload'

  resources :shares, only: [:new, :create]

  get 'podcasts/search'
  root 'pages#home'

end

Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

  get 'podcasts/search'
  root 'podcasts#reload'

end

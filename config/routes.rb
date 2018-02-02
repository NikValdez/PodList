Rails.application.routes.draw do
  resources :contacts

  get 'podcasts/search'
  root 'podcasts#reload'

end

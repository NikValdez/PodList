Rails.application.routes.draw do
  get 'episodes/index'

  get 'podcasts/search'
  root 'podcasts#search'

end

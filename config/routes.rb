Rails.application.routes.draw do
  get 'episodes/index'

  get 'songs/search'
  root 'songs#search'

end

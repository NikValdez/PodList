Rails.application.routes.draw do
  get 'songs/search'
  root 'songs#search'

end

Rails.application.routes.draw do
  get '/bts', to: 'application#bts'
  get '/search', to: 'application#search'

  get '/songs/:slug', to: 'songs#show'
  get '/songs-by-id/:id', to: 'songs#show_by_id'
  patch '/songs/:id', to: 'songs#update'
  delete '/songs/:id', to: 'songs#destroy'
  post '/songs', to: 'songs#create'

  get '/albums', to: 'albums#index'
  get '/albums/:slug', to: 'albums#show'
  patch '/albums/:id', to: 'albums#update'
  delete '/albums/:id', to: 'albums#destroy'
  post '/albums', to: 'albums#create'

  get '/album-types', to: 'album_types#index'
end

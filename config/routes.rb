Rails.application.routes.draw do
  get '/bts', to: 'application#bts'
  get '/search', to: 'application#search'

  get '/songs', to: 'songs#index' #short songs
  get '/songs/:id', to: 'songs#show' #long song
  get '/song-by-title/:slug', to: 'songs#show_by_title' #long song
  patch '/songs/:id', to: 'songs#update' #long song
  delete '/songs/:id', to: 'songs#destroy' #long song
  post '/songs', to: 'songs#create' #long song

  get '/albums', to: 'albums#index' #album types with short albums nested
  get '/albums/:id', to: 'albums#show'
  get '/album-by-title/:slug', to: 'albums#show_by_title'
  patch '/albums/:id', to: 'albums#update'
  delete '/albums/:id', to: 'albums#destroy'
  post '/albums', to: 'albums#create'

  get '/album-types', to: 'album_types#index'

  put '/tracks', to: 'tracks#update'
end

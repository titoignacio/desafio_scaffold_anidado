Rails.application.routes.draw do
  resources :playlists do
    post '/songs', to: 'songs#create'

  end
    delete '/songs/:id', to:'songs#destroy', as:'song'
  resources :users
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

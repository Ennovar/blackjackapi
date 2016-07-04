Rails.application.routes.draw do
  resources :users
  post 'dealer/deal'
  post 'dealer/hit'

  post 'dealer/start'

  post 'dealer/stand'

  post 'dealer/play'
  post 'dealer/hand'

  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

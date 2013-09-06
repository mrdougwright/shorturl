ShortURL::Application.routes.draw do
  resources :urls
  root to: 'urls#new'
end

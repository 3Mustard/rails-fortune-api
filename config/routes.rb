Rails.application.routes.draw do
  resources :notes
  resources :fortunes
  resources :cards
  
  #testing purposes
  get '/test', to: 'application#test'


end

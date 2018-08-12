Rails.application.routes.draw do

  get '/usuarios/list', to: 'usuarios#list'
  resources :relacions
  resources :reaccions
  resources :entradas
  resources :telefonos
  resources :correos
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/usuarios/list', to: 'usuarios#list'
end

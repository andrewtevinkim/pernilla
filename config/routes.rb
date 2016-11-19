Pernilla::Application.routes.draw do

  devise_for :users
  root 'static_pages#home'

  get '/send', to: 'static_pages#send'

  resources :api, path: :api
  
end

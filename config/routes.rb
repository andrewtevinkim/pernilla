Pernilla::Application.routes.draw do

  root 'static_pages#home'

  resources :api, path: :api
  
end

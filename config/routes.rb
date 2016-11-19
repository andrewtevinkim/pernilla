Pernilla::Application.routes.draw do

  devise_for :users
  root 'static_pages#home'

  get '/send_mp3', to: 'static_pages#send_mp3'

  resources :uploads do
    collection do
      post 'upload'
    end
  end

  resources :api, path: :api
  
end

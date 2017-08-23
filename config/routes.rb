Rails.application.routes.draw do
  devise_for :users
  root 'diarys#index'
  resources :diarys
  get '/users/:id' => 'users#show'
end
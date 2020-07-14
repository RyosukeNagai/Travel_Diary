Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about'

  resources :users,only: [:show,:edit,:update,]
  resources :genres,only: [:new,:create]
  resources :travels,only: [:index,:show,:edit,:update,:new,:create,:destroy] do
  resource :comments, only: [:create]
  resources :comments, only: [:new]
  resource :favorites, only: [:create,:destroy]
end
  resources :shioris,only: [:index,:show,:edit,:update,:new,:create,:destroy] do
  resources :schedules, only: [:show,:new,:create,:edit,:update,:destroy]
  resources :preparations, only: [:new,:create,:show,:destroy]
  resources :souvenirs, only: [:new,:create,:show,:destroy]
end
  resources :comments, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

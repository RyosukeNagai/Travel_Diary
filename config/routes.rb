Rails.application.routes.draw do
  get 'souvenirs/new'
  get 'souvenirs/show'
  get 'preparations/new'
  get 'preparations/show'
  get 'schedules/new'
  get 'schedules/show'
  get 'schedules/edit'
  get 'travels/index'
  get 'travels/show'
  get 'travels/new'
  get 'travels/edit'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

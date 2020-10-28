# frozen_string_literal: true

Rails.application.routes.draw do
  get 'books/index'
  root to: 'home#index'

  namespace :api do
    resources :books, only: [:index, :show,:create,:update, :destroy]
    post   'signup',  controller: :users,    action: :create
    post   'signin',  controller: :sessions, action: :create
    delete 'signin', controller: :sessions, action: :destroy
    post   'refresh', controller: :refresh,  action: :create
  end
end

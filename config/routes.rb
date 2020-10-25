# frozen_string_literal: true

Rails.application.routes.draw do
  get 'books/index'
  root to: 'home#index'

  namespace :api do
    resources :books, only: [:index, :show,:create,:update]
  end
end

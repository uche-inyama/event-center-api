# frozen_string_literal: true

Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :appointments, only: %i[create show]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  namespace :api do
    namespace :v1 do
      resources :centers
    end
  end
end

# frozen_string_literal: true

Rails.application.routes.draw do
  # post "/graphql", to: "graphql#execute"
  resources :images, only: %i[create]
  resources :sessions, only: %i[create]
  resources :registrations, only: %i[create]
  resources :appointments, only: %i[create show]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  namespace :api do
    namespace :v1 do
      resources :centers
    end
  end
  match '*path', via: [:options], to: lambda {|_| [204, { 'Content-Type' => 'text/plain' }]}
end

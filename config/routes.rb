# frozen_string_literal: true

Rails.application.routes.draw do
  resources :roles
  resources :categories, except: [:destroy]
  devise_for :users
  root 'visits#index'

  resources :users
  resources :visits do
    resources :appointments
  end
end

# frozen_string_literal: true

Rails.application.routes.draw do
  root 'visits#index'
  resources :visits do
    resources :appointments
  end
  resources :appointments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

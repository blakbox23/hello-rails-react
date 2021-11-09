# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static#index'

  get '*page', to: 'static#index', constraints: lambda { |req|
    !req.xhr? && req.format.html?
  }

  namespace :v1, defaults: { format: 'json' } do
    get 'things', to: 'things#index'
    resources :greetings, only: [:index]
  end
end

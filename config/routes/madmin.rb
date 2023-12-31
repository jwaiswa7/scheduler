# frozen_string_literal: true

# Below are the routes for madmin
namespace :madmin do
  namespace :active_storage do
    resources :variant_records
  end
  namespace :active_storage do
    resources :blobs
  end
  namespace :active_storage do
    resources :attachments
  end
  resources :services
  resources :announcements
  resources :companies
  resources :notifications
  resources :users
  root to: 'dashboard#show'
end

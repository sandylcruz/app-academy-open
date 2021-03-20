# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  defaults format: :json do
    namespace :api do 
      resources :todos, only: [:index, :show, :create, :destroy, :update] do 
        resources :steps, only: [:index]
      end
      
      resources :steps, only: [:create, :destroy, :update]
    end
  end

  root to: 'static_pages#root'
end

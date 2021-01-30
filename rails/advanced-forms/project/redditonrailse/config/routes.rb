Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :new, :show]
  resource :session, only: [:create, :destroy, :new]
  resources :subs, except: [:destroy]
  resources :posts do
    resources :comments, only: [:new]
  end
  resources :comments, only: [:create, :new, :show]
end

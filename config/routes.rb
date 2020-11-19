Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :materials do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: [ :index, :show, :new, :create, :edit, :update, :destroy] do
    resources :reviews, only: [ :new, :create, :destroy]
  end
  get "dashboard", to: "pages#dashboard"
end

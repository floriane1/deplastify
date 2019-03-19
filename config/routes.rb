Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'profile', to: 'pages#profile'
  get 'results', to: 'pages#results'

  resources :stores do
    resources :benefits, only: [:new, :create, :edit, :update, :destroy, :index] do
      resources :vouchers, only: [:new, :create, :show, :destroy]
    end
  end

  # get '/search/', :to => 'stores#search', :as => :search
end

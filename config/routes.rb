Rails.application.routes.draw do
  resources :reviews
  resources :animes do 
    resources :reviews, only: [:new, :create, :index, :show]
  end
  root to:'application#home'
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

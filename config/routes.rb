Rails.application.routes.draw do
  root to:'application#home'
  devise_for :users, path: 'users', :controllers => {omniauth_callbacks: 'omniauth'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

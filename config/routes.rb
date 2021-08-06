Rails.application.routes.draw do
  resources :watch_later_lists
  resources :comments
  resources :animes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

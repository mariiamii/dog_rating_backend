Rails.application.routes.draw do
  resources :dog_ratings
  resources :dog_breeds
  resources :breeds
  resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

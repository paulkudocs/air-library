Rails.application.routes.draw do
  resources :reviews, defaults: { format: :json }
  resources :books, defaults: { format: :json }
  resources :users, defaults: { format: :json }
end

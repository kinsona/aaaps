Rails.application.routes.draw do
  
  resources :users, only: [:create, :show]
  resources :content_views, only: [:create]
  resources :orders, only: [:create]
  resources :product_recommendations, only: [:create]

end

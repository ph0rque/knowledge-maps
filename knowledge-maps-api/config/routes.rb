Rails.application.routes.draw do
  resources :knowledge_maps
  resources :topics, only: [:index, :create, :edit, :update, :delete]
end

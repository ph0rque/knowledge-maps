Rails.application.routes.draw do
  resources :knowledge_maps do
    resources :topics
  end
end

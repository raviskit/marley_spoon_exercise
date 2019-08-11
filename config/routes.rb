Rails.application.routes.draw do

  root 'recipes#index', as: :recipes_path
  resources :recipes, only: [:index, :show]
end

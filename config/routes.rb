Foodmatrix::Application.routes.draw do
  
  root 'welcome#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup', to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  get "/meals" => "meals#index"

  resources :ingredients

  resources :prep_ingredients

  resources :preps do
    resources :prep_ingredients
  end

  resources :proteins do
    resources :preps
  end

  resources :snacks

  resources :fats

  resources :recipes

  resources :spices

  resources :vegetables do
  	resources :recipes
  end
  
end


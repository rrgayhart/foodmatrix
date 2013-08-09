Foodmatrix::Application.routes.draw do
  
  root 'welcome#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup', to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  get "/meals" => "meals#index"

  resources :snacks

  resources :fats

  resources :recipes

  resources :preps

  resources :spices

  resources :vegetables do
  	resources :recipes
  end

  resources :proteins do
  	resources :preps
  end
 
  
end


Foodmatrix::Application.routes.draw do
  
  resources :users
  
  match '/signup', to: 'users#new', via: 'get'
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
 
  root 'welcome#index'
end


Foodmatrix::Application.routes.draw do
  
  root 'welcome#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup', to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  get "/meals" => "meals#index"

  resources :ingrediants

  resources :prep_ingrediants

  resources :preps

  resources :proteins do
    resources :preps
      resources :prep_ingrediants
  end
 # Not sure if I should nest prep_ingrediants under preps like this

  resources :snacks

  resources :fats

  resources :recipes

  resources :spices

  resources :vegetables do
  	resources :recipes
  end
  
end


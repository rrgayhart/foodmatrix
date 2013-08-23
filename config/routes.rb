Foodmatrix::Application.routes.draw do
  
  resources :gls

  root 'welcome#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup', to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  
  get "/meals" => "meals#index"

  resources :ingredients

  resources :prep_ingredients

  resources :preps, except: [:create] do
    resources :prep_ingredients
  end

  resources :proteins do
    resources :preps, controller: "protein_preps", only: [:create]
  end

  resources :snacks do
    resources :preps, controller: "snack_preps", only: [:create]
  end

  resources :fats do
    resources :preps, controller: "fat_preps", only: [:create]
  end

  resources :spices do
    resources :preps, controller: "spice_preps", only: [:create]
  end

  resources :vegetables do
  	resources :preps, controller: "vegetable_preps", only: [:create]
  end

  resources :users do
    resources :gls
  end

  resources :grocery_lists

  resources :gls

  resources :gls do
    resources :grocery_lists
  end
  
end


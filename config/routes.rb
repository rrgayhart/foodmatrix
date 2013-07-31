Foodmatrix::Application.routes.draw do
  
  resources :spices

  resources :vegetables

  resources :proteins do
  	resources :preps
  end
 
  root 'welcome#index'
end


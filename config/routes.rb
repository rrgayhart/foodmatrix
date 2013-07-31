Foodmatrix::Application.routes.draw do
  
  resources :proteins do
  	resources :preps
  end
 
  root 'welcome#index'
end


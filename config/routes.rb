Foodmatrix::Application.routes.draw do
  
  resources :proteins
 
  root 'welcome#index'
end


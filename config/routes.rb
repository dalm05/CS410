Store::Application.routes.draw do
  get "options/new"

  get "questionnaires/new"
  get "questionnaires/add"
  get "selections/new"
   get "selections/index"
  get "questionnaires/edit"
  get "questionnaires/show"
  root to: 'questionnaires#index'
  resources :products
  resources :questionnaires
  resources :selections
end

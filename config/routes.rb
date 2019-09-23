Rails.application.routes.draw do
  root 'catalog#index', as: 'catalog_index'
  resources :books do
    resources :reviews
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

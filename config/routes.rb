Rails.application.routes.draw do
  root to: 'tests#index'
  resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

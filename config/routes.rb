Rails.application.routes.draw do
  resources :page_twos
  root to: 'tests#index'
  get '/2', to: 'page_twos#index'
  resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

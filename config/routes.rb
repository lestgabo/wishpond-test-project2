Rails.application.routes.draw do
  root to: 'tests#index'
  resources :tests
  get '/page1', to: 'tests#index'
  get '/about', to: 'tests#about'
end

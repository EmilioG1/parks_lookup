Rails.application.routes.draw do
  root to: 'parks#index'
  get "/parks/search", to: "parks#search"
  resources :parks
end

Rails.application.routes.draw do
  root 'shops#index'
  get "/shops/search_location"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'scrappers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :scrappers
end

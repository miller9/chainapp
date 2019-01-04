Rails.application.routes.draw do
  resources :chains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      root 'chains#index'
end

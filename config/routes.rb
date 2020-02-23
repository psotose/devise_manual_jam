Rails.application.routes.draw do
  resources :stories
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

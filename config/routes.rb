Rails.application.routes.draw do
  resources :wizards do
    resources :favorite_spells, only: [:new, :create, :destroy]
  end
  resources :spells
  resources :favorite_spells, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

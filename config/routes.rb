Rails.application.routes.draw do
  resources :wizards, only: [:index]
  root "wizards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
  ###Wizards###

  get '/wizards', to: 'wizards#index', as: 'wizards'
  get '/wizards/new', to: 'wizards#new', as: 'new_wizard'
  get '/wizards/:id/edit', to: 'wizards#edit', as: 'edit_wizard'
  get '/wizards/:id', to: 'wizards#show', as: 'wizard'

  post '/wizards', to: 'wizards#create'
  patch '/wizards/:id', to: 'wizards#update'
  delete '/wizards/:id', to: 'wizards#destroy'


  ###Spells###

  get '/spells', to: 'spells#index', as: 'spells'
  get '/spells/new', to: 'spells#new', as: 'new_spell'
  get '/spells/:id', to: 'spells#show', as: 'spell'

  post '/spells', to: 'spells#create'

  ###FavoriteSpells##

  get '/wizards/:id/new_favorite_spell', to: 'favorite_spells#new', as: 'new_favorite_spell'

  post '/favorite_spells', to: 'favorite_spells#create'
end

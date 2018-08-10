Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/cocktails" => "cocktails#index", as: :cocktails
  # Create
  # 2. Créer le resto à partir des data du form
  post 'cocktails', to: 'cocktails#create'

  # 1. Accéder au form de création d'un resto
  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail

   get 'cocktails/:id', to: 'cocktails#show', as: :cocktail_show

   resources :cocktails, only: [:show] do
    # NOPE
    # resources :plants, only: [:new, :create, :destroy] # => gardens/:garden_id/plants/:id
    resources :doses, only: [:new, :create]
  end

   resources :cocktails, only: [:show] do
    # NOPE
    # resources :plants, only: [:new, :create, :destroy] # => gardens/:garden_id/plants/:id
    resources :reviews, only: [:new, :create]
  end


  resources :doses, only: [:destroy]

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails , only: [:index, :show, :new, :create] do
    resources :doses, only: [:show, :new, :create]
  end
  resources :cocktails, only: [:destroy], as: :cocktail_destroy
  resources :doses, only: [:destroy]
end


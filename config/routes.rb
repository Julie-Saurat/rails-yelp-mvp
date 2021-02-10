Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:update, :destroy] do
    resources :review, only: [ :new, :create ]
  end

  resources :review, only: [:show]

end

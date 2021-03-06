Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'

  authenticate :user do
    resources :wines
    resources :strains
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

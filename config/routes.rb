Rails.application.routes.draw do
  namespace :v1 do
    resources :movimientos
  end
  namespace :v1 do
    resources :clientes
  end
  namespace :v1 do
    resources :agentes
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

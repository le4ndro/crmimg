Rails.application.routes.draw do
  devise_for :users
  resources :accounts
  resources :produtos
  resources :cliente_potencials do
    resources :oportunidades do
      resources :atividades
    end      
    resources :contatos
  end

  root 'pages#index'
end

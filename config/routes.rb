class SubdomainPresent
  def self.matches?(request)
    request.subdomain.present?
  end
end

class SubdomainBlank
  def self.matches?(request)
    request.subdomain.blank?
  end
end

Rails.application.routes.draw do

  resources :enderecos
  constraints(SubdomainPresent) do
    root 'pages#dashboard', as: :subdomain_root
    devise_for :users
    resources :accounts
    resources :produtos
    resources :cliente_potencials do
      resources :oportunidades do
        resources :atividades
      end      
      resources :contatos
      resources :enderecos
    end
  end

  constraints(SubdomainBlank) do
    root 'pages#index'
    get 'users/sign_in', to: "pages#recoversubdomain", constraints: { subdomain: '' }
    resources :accounts, only: [:new, :create]
  end
end

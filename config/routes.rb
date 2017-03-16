Rails.application.routes.draw do

  resources :instrutors
  resources :monitoria
  devise_for :users
  root to: redirect('/areas')

  resources :disciplinas
  resources :unidades
  
  resources :monitoria do
    member do
      get 'agendar'
    end
  end
  
  resources :monitoria do
    member do
      get 'cancelar'
    end
  end
  
   #Relacionamentos:

  resources :unidade do
    resources :disciplinas
  end

  resources :areas do
    resources :unidades
  end

  resources :disciplinas do
    resources :monitoria
    end

  #URL/CONTROLADOR/AÇÂO/O QUE SERÀ FEITO
  match 'monitores', controller: 'utilizadors', action: 'monitores', via: 'get'


  #resources :disciplinas, except: :destroy
  #resources :disciplinas, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

Rails.application.routes.draw do

  root to: redirect('/areas')

  resources :disciplinas
  resources :unidades
  
   #Relacionamentos:

  resources :unidade do
    resources :disciplinas
  end

  resources :areas do
    resources :unidades
  end

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

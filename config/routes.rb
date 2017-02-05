Rails.application.routes.draw do


   #Relacionamentos:

  resources :areas do
    resources :unidades
  end


  resources :unidades


  root to: redirect('/areas')
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html






end

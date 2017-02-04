Rails.application.routes.draw do

  resources :areas do
    resources :unidades
  end

  root to: redirect('/areas')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

Rails.application.routes.draw do
  resources :posts
  resources :inicios
  root to: redirect('/inicios')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

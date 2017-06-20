Rails.application.routes.draw do

  root  "home#index"

  get '/solicitud_reservas/confirmar_reservas' => 'solicitud_reservas#confirmar_reservas'
  get '/categories/delete_category/:id' => 'categories#delete_category'

  resources :categories
  resources :products
  resources :users
  resources :solicitud_reservas

end




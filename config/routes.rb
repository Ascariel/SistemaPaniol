Rails.application.routes.draw do

  root  "home#index"

  get '/solicitud_reservas/confirmar_reservas' => 'solicitud_reservas#confirmar_reservas'

  resources :categories
  resources :products
  resources :users
  resources :solicitud_reservas

end




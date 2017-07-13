Rails.application.routes.draw do

  
  root  "home#index"
  # devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations'
  }  

  
  get '/categories/delete_category/:id' => 'categories#delete_category'
  get '/products/delete_product/:id' => 'products#destroy'
  get '/product_list' => 'products#product_list'

  # SolicitudReservas
  get '/solicitud_reservas/reservas_preview' => 'solicitud_reservas#reservas_preview'
  get '/solicitud_reservas/confirmar_reservas' => 'solicitud_reservas#confirmar_reservas'
  get '/solicitud_reservas/cancelar_reservas' => 'solicitud_reservas#cancelar_reservas'
  post '/solicitud_reservas/reservas_preview' => 'solicitud_reservas#reservas_preview'


  get "/generar_reserva_admin" => 'solicitud_reservas#generar_reserva_admin'
  post '/update_estado_reserva' => 'solicitud_reservas#update_estado_reserva'
  get '/cancelar_reserva_por_correo' => 'solicitud_reservas#cancelar_reserva_por_correo'

  

  post '/users/create_user' => 'users#create'
  post '/toggle_user_confirmado' => 'users#toggle_user_confirmado'


  resources :categories
  resources :products
  resources :users
  resources :solicitud_reservas

end




Rails.application.routes.draw do

  
  root  "home#index"
  # devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    confirmations: 'users/confirmations'
  }  

  get '/solicitud_reservas/confirmar_reservas' => 'solicitud_reservas#confirmar_reservas'
  get '/categories/delete_category/:id' => 'categories#delete_category'
  get '/products/delete_product/:id' => 'products#destroy'
  get '/product_list' => 'products#product_list'

  resources :categories
  resources :products
  resources :users
  resources :solicitud_reservas

end




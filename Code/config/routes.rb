Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'users#signin_show'
  root 'users#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :appointments do
    collection do
      match 'show', to: 'appointments#show', via: [:get, :post]
      match 'add', to: 'appointments#add', via: [:get, :post]
      match 'edit', to: 'appointments#edit', via: [:get, :post]
      match 'drop', to: 'appointments#drop', via: [:get, :post]
    end
  end
  
  #   resources :products
  resources :product do
    collection do
      match 'show', to: 'product#show', via: [:get, :post]
      match 'search', to: 'product#search', via: [:get]
      match 'edit', to: 'product#edit', via: [:get, :post]
      match 'add', to: 'product#add', via: [:get, :post]
      match 'pic/:id', to: 'product#pic', via: [:get]
      match 'tagged', to: 'product#tagged', via: [:post]
      match 'search', to: 'product#search', via: [:post]
      get 'search'
    end
  end
  
  resources :images do
    collection do
      match 'product/pic/:id', to: 'product#pic', via: [:get]
    end
  end

  #scope module: 'users' do
  #  resouces :signin, signup, forgot, send_code
  #end
  resources :users do
    collection do
      match 'signin', to: 'users#signin_show', via: [:get]
      match 'signin', to: 'users#signin', via: [:post]
      match 'signup', to: 'users#signup_show', via: [:get]
      match 'signup', to: 'users#signup', via: [:post] ## new -> signup (xz)
      match 'forgot', to: 'users#forgot_show', via: [:post]
      match 'forgot', to: 'users#forgot', via: [:get]
      match 'send_code', to: 'users#send_code', via: [:get]
      
    end
  end

  
  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

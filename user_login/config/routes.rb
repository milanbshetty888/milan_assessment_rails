Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  get '/user/new' => 'userdetails#new', as: :userdetail_new

  post '/user/new' => 'userdetails#create', as: :userdetails_create

  get '/user/index' => 'userdetails#index', as: :userdetails_index

  get '/user/edit/:id' => 'userdetails#edit', as: :userdetails_edit

  put '/user/edit/:id' => 'userdetails#update', as: :userdetails_update

  delete '/user/delete/:id' => 'userdetails#destroy', as: :userdetails_destroy

  get "user/profile/:id" => "userdetails#show", as: :userdetail_show

  get '/project/new/:id' => 'userdetails#show', as: :profile_show

  post '/project/new/:id' => 'userdetails#create1', as: :userdetails_create1
  # delete "book/:id" => "books#destroy", as: :book_destroy
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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

Rails.application.routes.draw do

  root :to => 'items#index'
  post 'items', :to => 'items#index'
  #get "hello", :to => 'hihi#tester', :as => 'hihihihi'
  #post "kitty", :to => 'items#index'
  #delete "kitty2", :to => 'items#index'
  
=begin
  get "dog/:id/:type/:meows/:wow" , :to => 'nono#meow'     #自訂參數路徑,此例接四個參數id,type,meows,wow
  match "dog/:id/:type/:meows/:wow" , :to => 'nono#meow' , :via => [:get, :patch, :delete]


  resources :yooo, :only => [:show] do
    collection do 
      get :yooo
    end
    member do
      get :hooo
    end
  end
=end
=begin
  resources :cates
  resources :items do
    member do
      get :add_cart
    end
  end


  devise_for :managers
  devise_for :users
  #resources :statics , :only => [:index]
  root 'items#index'
  
  resources :items , :only => [:index, :show]

  namespace :dashboard do 
    resources :orders
    namespace :admin do #admin為示範用，建議改亂碼字串或其他無關的字眼
      resources :items
      resources :cates
      resources :orders
      resources :users
      resources :managers
    end
  end
=end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

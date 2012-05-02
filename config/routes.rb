Crimes::Application.routes.draw do
#Rotas para o DEVISE
   scope '/admin' do
      devise_for :usuarios, :controllers => {
        :sessions      => "admin/sessions",
        :passwords     => "admin/passwords"
      }
   end
#ROTAS PÚBLICAS
  resources :crimes do
    resources :modalidades, :only => [:index]
    resources :casos, :only => [:create, :index]
    resources :doutrinas, :only => [:create, :index]
    resources :juris, :only => [:create, :index]
    resources :qts, :only => [:create, :index]
    resources :temas, :only => [:create, :index]
  end
  
  resources :contatos,
    :only => [:new, :create],
    :path => "contato"

#ROTAS RESTRITAS
  namespace :admin do
    root :to => "crimes#index"
    resources :crimes do
      resources :modalidades
      resources :casos
      resources :doutrinas
      resources :juris
      resources :qts
      resources :temas      
    end
    resources :contatos, :except => [:new, :create]
    resources :pendentes, :only => [:index]    
    resources :usuarios, :except => [:show]
  end

  match 'arg/' => 'home#arg', :as => :arg
  match 'sentencas/' => 'home#sentencas', :as => :sentencas
  match 'sobre/' => 'home#sobre', :as => :sobre
  match 'dic/' => 'home#dic', :as => :dic  
  
  root :to => "home#index"
  get "home/index"

#  match 'crimes/:crime_id/argumentos' => 'argumentos#index', :as => :argumentos
#  match 'crimes/:crime_id/modalidades' => 'modalidades#index', :as => :modalidades  

# The priority is based upon order of creation:
# first created -> highest priority.

# Sample of regular route:
#   match 'products/:id' => 'catalog#view'
# Keep in mind you can assign values other than :controller and :action

# Sample of named route:
#   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
# This route can be invoked with purchase_url(:id => product.id)

# Sample resource route (maps HTTP verbs to controller actions automatically):
#   resources :products

# Sample resource route with options:
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

# Sample resource route with sub-resources:
#   resources :products do
#     resources :comments, :sales
#     resource :seller
#   end

# Sample resource route with more complex sub-resources
#   resources :products do
#     resources :comments
#     resources :sales do
#       get 'recent', :on => :collection
#     end
#   end

# Sample resource route within a namespace:
#   namespace :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controllers/admin/products_controller.rb)
#     resources :products
#   end

# You can have the root of your site routed with "root"
# just remember to delete public/index.html.
# root :to => 'welcome#index'

# See how all your routes lay out with "rake routes"

# This is a legacy wild controller route that's not recommended for RESTful applications.
# Note: This route will make all actions in every controller accessible via GET requests.
# match ':controller(/:action(/:id))(.:format)'
end

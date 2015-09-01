Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'sessions#new'
  root 'welcome#index'
# root 'categories#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
resources :categories do

resources :questionnaires

resources :video_clues



end

get '/signup' => 'players#new'
post 'signup' => 'players#create'
resources :players

get '/login' => 'sessions#new'

post 'login' => 'sessions#create'

delete 'logout' => 'sessions#destroy'


get '/choose_answer/:id', :to => "questionnaires#choose_answer"
#The route method to link to a specific html file inside a controller

# get 'categeories/:id/choose_answer' => "questionnaires#choose_answer"
post '/results/:id', :to => "questionnaires#results"



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

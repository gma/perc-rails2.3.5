Perc::Application.routes.draw do 
  get "welcome/home"
  match '/about', :to => 'welcome#about'
  match '/cheque', :to => 'welcome#cheque'
  match '/contact', :to => 'welcome#contact'
  match '/credit_card', :to => 'welcome#credit_card'
  match '/credit_transfer', :to => 'welcome#credit_transfer'
  match '/dollars', :to => 'welcome#dollars'
  match '/dollars_trial', :to => 'welcome#dollars_trial'
  match '/ed', :to => 'welcome#ed'
  match '/endorsements', :to => 'welcome#endorsements'
  match '/euros', :to => 'welcome#euros'
  match '/euros_trial', :to => 'welcome#euros_trial'
  match '/free_trial', :to => 'welcome#free_trial'
  match '/join', :to => 'welcome#join'
  match '/links', :to => 'welcome#links'
  match '/member_orchestras', :to => 'welcome#member_orchestras'
  match '/pounds', :to => 'welcome#pounds'
  match '/pounds_trial', :to => 'welcome#pounds_trial'
  match '/privacy_policy', :to => 'welcome#privacy_policy'
  match '/subscription_rates', :to => 'welcome#subscription_rates'
  match '/terms', :to => 'welcome#terms' 
  
  resources :work_requests

  resources :endorsements 

  resources :explanatory_notes

  resources :no_percs

  resources :instrument_translations

  resources :terms

  resources :privacy_policy

  resources :contact

  resources :composers

  resources :works

  resources :workdetails
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
  root :to => "welcome#home"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
end

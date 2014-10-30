Rails.application.routes.draw do

get    "/albums/index",     to: "albums#index",   as: :albums_index

post   "albums/:id",        to: "albums#upvote",  as: :albums_upvote

post   "/albums",           to: "albums#create"


get    "/albums/:id",       to: "albums#show",    as: :albums_show
get    "/albums/:id",       to: "albums#show",    as: :album

put    "/albums/:id",       to: "albums#update"
patch  "/albums/:id",       to: "albums#update"


get    "/albums/:id/edit",  to: "albums#edit",    as: :edit_album
post   "/albums/:id/edit",  to: "albums#edit"


delete "/albums/:id",       to: "albums#destroy", as: :delete_album

###########################################################################

get    "/books/index",     to: "books#index",   as: :books_index

post   "books/:id",        to: "books#upvote",  as: :books_upvote

post   "/books",           to: "books#create"


get    "/books/:id",       to: "books#show",    as: :books_show
get    "/books/:id",       to: "books#show",    as: :book

put    "/books/:id",       to: "books#update"
patch  "/books/:id",       to: "books#update"


get    "/books/:id/edit",  to: "books#edit",    as: :edit_book
post   "/books/:id/edit",  to: "books#edit"


delete "/books/:id",       to: "books#destroy", as: :delete_book

###########################################################################

get    "/movies/index",     to: "movies#index",   as: :movies_index


post   "movies/:id",        to: "movies#upvote",  as: :movies_upvote

post   "/movies",           to: "movies#create"


get    "/movies/:id",       to: "movies#show",    as: :movies_show
get    "/movies/:id",       to: "movies#show",    as: :movie

put    "/movies/:id",       to: "movies#update"
patch  "/movies/:id",       to: "movies#update"


get    "/movies/:id/edit",  to: "movies#edit",    as: :edit_movie
post   "/movies/:id/edit",  to: "movies#edit"


delete "/movies/:id",       to: "movies#destroy", as: :delete_movie

###########################################################################

root to: "media_ranker#index"


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

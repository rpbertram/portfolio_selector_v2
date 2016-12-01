Rails.application.routes.draw do
  # Routes for the Allocation resource:
  # CREATE
  get "/allocations/new", :controller => "allocations", :action => "new"
  post "/create_allocation", :controller => "allocations", :action => "create"

  # READ
  get "/allocations", :controller => "allocations", :action => "index"
  get "/allocations/:id", :controller => "allocations", :action => "show"

  # UPDATE
  get "/allocations/:id/edit", :controller => "allocations", :action => "edit"
  post "/update_allocation/:id", :controller => "allocations", :action => "update"

  # DELETE
  get "/delete_allocation/:id", :controller => "allocations", :action => "destroy"
  #------------------------------

  # Routes for the Client resource:
  # CREATE
  get "/clients/new", :controller => "clients", :action => "new"
  post "/create_client", :controller => "clients", :action => "create"

  # READ
  get "/clients", :controller => "clients", :action => "index"
  get "/clients/:id", :controller => "clients", :action => "show"

  # UPDATE
  get "/clients/:id/edit", :controller => "clients", :action => "edit"
  post "/update_client/:id", :controller => "clients", :action => "update"

  # DELETE
  get "/delete_client/:id", :controller => "clients", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

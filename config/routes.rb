Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
   namespace :api do
     get "/employees" => "employees#index"
     post "/employees" => "employees#create"
     get "/employees/:id" => "employees#show"

     get "/departments" => "departments#index"
     post "/departments" => "departments#create"
     get "/departments/:id" => "departments#show"
   end


end

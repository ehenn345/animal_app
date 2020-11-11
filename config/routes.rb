Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/animals" => "animals#index"
    get "/animals/:id" => "animals#show"
    post "/animals" => "animals#create"
    patch "/animals/:id" => "animals#update"
    delete "/animals/:id" => "animals#destroy"
  end
end

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get "/restaurants/" => "restaurants#index"
      get "/restaurants/:id" => "restaurants#show"
      post "/restaurants" => "restaurants#create"
      patch "/restaurants/:id" => "restaurants#edit"
      delete "/restaurants/:id" => "restaurants#delete"
    end

    namespace :v2 do
      get "/restaurants/" => "restaurants#index"
      get "/restaurants/:id" => "restaurants#show"
      post "/restaurants" => "restaurants#create"
      patch "/restaurants/:id" => "restaurants#edit"
      delete "/restaurants/:id" => "restaurants#delete"
    end
  end
end

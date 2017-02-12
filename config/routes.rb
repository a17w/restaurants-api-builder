Rails.application.routes.draw do

get "/restaurants/" => "restaurants#index"

get "/restaurants/show/:id" => "restaurants#show"

post "/restaurants" => "restaurants#create"
end

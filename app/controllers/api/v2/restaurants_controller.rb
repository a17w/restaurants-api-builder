class Api::V2::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render "index.json.jbuilder"
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    restaurant = Restaurant.find_by(id: params[:id])
    @restaurant.update(
      restaurant_name: params[:restaurant_name] || @restaurant.restaurant_name,
      address: params[:address] || @restaurant.address,
      phone: params[:phone] || @restaurant.phone,
      contact_person: params[:contact_person] || @restaurant.contact_person
      )
    render "show.json.jbuilder"
  end

  def destroy
    restaurant = Restaurant.find_by(id: params[:id])
    restaurant.destroy
    render json: { message: "Restaurant successfully destroyed!"}
  end
end

json.array! @restaurants.each do |restaurant|
  json.id restaurant.id #restaurant.id can't change, json id OK to change
  json.restaurant_name restaurant.restaurant_name
  json.address restaurant.address
  json.phone restaurant.phone
  json.contact_person restaurant.contact_person
end
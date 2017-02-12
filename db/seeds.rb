100.times do 
  Restaurant.create(
    restaurant_name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.phone_number,
    contact_person: Faker::Name.name
    )
end
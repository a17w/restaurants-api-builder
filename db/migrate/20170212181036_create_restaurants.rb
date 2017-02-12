class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :address
      t.string :phone
      t.string :contact_person

      t.timestamps
    end
  end
end

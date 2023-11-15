# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database"
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 677777777, category: "japanese"}
ours = {name: "Ours", address: "Vincennes", phone_number: 679877777, category: "french"}
chipotle = {name: "Chipotle", address: "St Germain", phone_number: 672347777, category: "italian"}
xu = {name: "Chez Xu", address: "Rue Volta", phone_number: 623477777, category: "chinese"}
domac = {name: "Domac", address: "NYC", phone_number: 670027777, category: "belgian"}


[dishoom, ours, chipotle, xu, domac].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

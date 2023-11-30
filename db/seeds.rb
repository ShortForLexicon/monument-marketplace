# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Monument.destroy_all

puts "Creating monuments..."
Monument.create(name: "Eiffel tower", location: "France", description: "A beautiful tower in Paris", price: 1500000000)
Monument.create(name: "Statue of Liberty", location: "America", description: "An green statue off the coast of New York
   City", price: 12)

puts "Finished!"

require "open-uri"

puts "Cleaning database..."
Monument.destroy_all

puts "Creating monuments..."

file_eiffel = URI.open("https://images.pexels.com/photos/19181679/pexels-photo-19181679/free-photo-of-ville-soleil-couchant-tour-eiffel-france.jpeg")
tour_eiffel = Monument.new(name: "Eiffel tower", location: "Paris, France",
description: "A beautiful tower in Paris", price: 150_000_000)
tour_eiffel.photo.attach(io: file_eiffel, filename: "tour.png", content_type: "image/jpg")
tour_eiffel.save!

file_liberty = URI.open("https://images.pexels.com/photos/356844/pexels-photo-356844.jpeg")
statue_liberty = Monument.new(name: "Statue of Liberty", location: "America", description: "An enormous green statue off
the coast of New York City", price: 120_000_000)
statue_liberty.photo.attach(io: file_liberty, filename: "Statue.png", content_type: "image/jpg")
statue_liberty.save!

puts "Finished!"

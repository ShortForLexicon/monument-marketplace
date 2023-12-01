require "open-uri"

puts "Cleaning database..."
Monument.destroy_all
User.destroy_all
Offer.destroy_all

puts "Creating Users..."

testAmerican = User.new(id: 890, username: "american", email: "test@test.com", password: "password")
testAmerican.save!

testFrenchman = User.new(id: 33, username: "frenchman", email: "yanir49095@notedns.com", password: "password")
testFrenchman.save!

puts "Creating monuments..."

file_eiffel = URI.open("https://images.pexels.com/photos/19181679/pexels-photo-19181679/free-photo-of-ville-soleil-couchant-tour-eiffel-france.jpeg")
tour_eiffel = Monument.new(id: 9, name: "Eiffel tower", location: "France", description: "A beautiful tower in Paris", price: 1500000000, user_id: 33 )
tour_eiffel.photo.attach(io: file_eiffel, filename: "tour.png", content_type: "image/jpg")
tour_eiffel.save!

file_liberty = URI.open("https://images.pexels.com/photos/356844/pexels-photo-356844.jpeg")
statue_liberty = Monument.new(id: 10, name: "Statue of Liberty", location: "America", description: "An enormous green statue off the coast of New York City", price: 12, user_id: 890)
statue_liberty.photo.attach(io: file_liberty, filename: "Statue.png", content_type: "image/jpg")
statue_liberty.save!

puts "Creating Offers..."

testOffer = Offer.new(status: 'pending', monument_id: 9 , user_id: 890)
testOffer.save!


puts "Finished!"

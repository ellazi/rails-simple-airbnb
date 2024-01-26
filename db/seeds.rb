require 'faker'

20.times do
flat = Flat.new(
name: Faker::Emotion.noun.capitalize,
address: Faker::Address.full_address,
description: Faker::Restaurant.description,
price_per_night: rand(20..800),
number_of_guests: rand(1..10),
)
flat.save!
end

puts 'Finished!'

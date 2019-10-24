# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#fabrique des villes
10.times do 
    City.create(name: Faker::Address.city)
end

#fabrique des chiens
20.times do 
    Dog.create(name: Faker::Name.name, city_id: rand(1..10))
end

#fabrique des promeneurs.
20.times do 
    DogSitter.create(name: Faker::Name.name, city_id: rand(1..10))
end 

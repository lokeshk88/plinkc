# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
User.delete_all

100.times do|i|
	user=User.create(
		first_name: Faker::Name.first_name,
		last_name:  Faker::Name.last_name,
		location: Faker::Address.city,
		description: Faker::Lorem.paragraphs 
		)
puts "#{i} user created."
end

require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "user1@newuser.xyz",
    password: 'secret',
    is_homeowner: true
)
10.times do 
    Property.create(
        name: Faker::Address.community,
        address: Faker::Address.full_address,
        description: Faker::Lorem.paragraph,
        price_per_night: Faker::Number.decimal(l_digits: 2),
        number_of_guests: Faker::Number.between(from: 1, to: 5),
        user: user
    )
end
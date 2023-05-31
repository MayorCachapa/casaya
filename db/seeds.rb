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

# /////Use Faker to seed
# 10.times do
#     Property.create(
#         name: Faker::Address.community,
#         address: Faker::Address.full_address,
#         description: Faker::Lorem.paragraph,
#         price_per_night: Faker::Number.decimal(l_digits: 2),
#         number_of_guests: Faker::Number.between(from: 1, to: 5),
#         user: user
#     )
# end

# //// Seed manual template
# Property.create(
#   name: "",
#   address: "",
#   description: "",
#   price_per_night: ,
#   number_of_guests: ,
#   user: user
# )

Property.create(
  name: "Clean & Cozy city apartment",
  address: "Amsterdam, Noord-Holland, Netherlands",
  description: "Relax in this family friendly are of Amsterdam and easily walk to the park, local restaurants + the canals of Amsterdam.

  15 min from the airport (Uber) and 20-30 min using the public transport.",
  price_per_night: 209,
  number_of_guests: 2,
  user: user
)

Property.create(
  name: "Lovely 90m2 apartment",
  address: "Amsterdam, Noord-Holland, Netherlands",
  description: "Beautiful 90 square meter (1000 sq ft.) apartment centrally located in Old-West in a quiet street - Ideal for couples or single travellers
  The space
  This Wonderfully Decorated Deluxe Apartment on the first floor of a typical Dutch building from the 1890’s. You have the entire floor to yourself. The original features are highlighted with modern design details. A unique mixture of old and new that will inspire you.

  This apartment will feel like a haven where you can relax and enjoy yourself and become deeply inspired by the beauty that surrounds you.

  Let’s start with the large bed (220x200cm, 7,2ft x 7 ft), in which you will wake up feeling truly rested and refreshed. You can enjoy a lovely breakfast in one of the wonderful places around the corner or in the Vondelpark or Foodhallen at walking distance. And you will be as ready as you can get to explore Amsterdam.

  This apartment, situated on a quiet street. It has a large kitchen table on which you can work or dine

  This apartment has a wonderful atmosphere. The high ceiling will free your mind and the windows ensure a beautiful influx of natural light. During the day you can enjoy the roof terrace which has a Kamado BBQ!

  The wifi connection is fast and freely accessible. There is a TV with all the cable channels – Netflix, Disney Plus, Amazon Prime, NPO plus & Videoland are free of charge

  There is a washing machine and dryer in the apartment; everything you need to wash is available free of charge

  Supermarkets and all kinds of local stores are to be found all across the neighbourhood. With the nearest one at about 100 meters (110 yards)

  There are many cafe’s and restaurants where you can meet the locals and people from all over town.

  This place is great for couples, luxury loving singles and business travellers.
  Guest access
  You will have complete privacy in this apartment and access to everything, as pictured. The street is quiet, but Old west is very buzzing with nightlife and fine dining all at walking distance
  Other things to note
  I will warmly welcome you and help make you feel at home. I can help you out with insider tips and information so you can fully enjoy Amsterdam. We will advise you about the neighbourhood, our favourite not-so-easy-to-find-by-yourself hotspots, tourist-traps and other useful information.

  You can reach almost everything interesting in Amsterdam by foot from here. But trams and busses are readily available around the corner and will take you all over town, if so wished. And you can also rent a bike of course.
  ",
  price_per_night: 471,
  number_of_guests: 2,
  user: user
)

Property.create(
  name: "Stylish and well-furnished canal apartment",
  address: "Amsterdam, Noord-Holland, Netherlands",
  description: "Beautifully renovated canal view apartment in the center of Amsterdam.

  All well-known hotspots such as the Vondelpark, the canals, high-end shopping areas, De Pijp (Albert Cuyp) and the museum district are within walking distance.

  This apartment is the perfect place to relax after a day in the bustling city.

  The apartment is easily accessible from Schiphol International Airport and Amsterdam Central Station by public transport.
  The space
  Very light apartment with a canal view and open kitchen, beautifull bathroom and nice diner place. Use of kitchen appliances (coffee, salt, suger etc). You can also use the washing machine and dryer.",
  price_per_night: 418,
  number_of_guests: 2,
  user: user
)

Property.create(
  name: "Private Canal House | City Center | Bath",
  address: "Amsterdam, Noord-Holland, Netherlands",
  description: "Wonderfully renovated and sunny apartment located on the canal in the middle of the Center with a balcony on the South / West on the water. Master bedroom with fitted wardrobes, spacious bathroom with bath and shower and modern kitchen located at the front.
  Guest access
  All areas, when booking for 2 people, the second bedroom is used as storage by the owner
  Other things to note
  Centrally located near the trams to central station and bus station Elandsgracht with direct connection to Schiphol. Near various catering facilities located on the Bosboom Toussaintstraat (Pastis, Toussaint and Gertrude)

  Registration number 0363 FBF6 158D 8F11 860E
  ",
  price_per_night: 590,
  number_of_guests: 2,
  user: user
)

Property.create(
  name: "New amazing 4 person Jordaan Apartment II",
  address: "Amsterdam, Noord-Holland, Netherlands",
  description: "Very luxurious and spacious apartment in the best area of Amsterdam.The Jordaan area9 straatjes area. Perfect for 4 people who want to enjoy their vacation to the max! The city centre of Amsterdam offers plenty of stuff to do and places to see. Anne Frank House, Vondelpark, Foam Photography Museum, Rijksmuseum, Leideseplein- one of the city’s most popular nightlife areas, home to famous music venues, fun dance clubs, relaxed bars and more and many more to see!
  Bewerken",
  price_per_night: 428,
  number_of_guests: 4,
  user: user
)

Property.create(
  name: "Home with private garden in Amsterdam West!",
  address: "Amsterdam, Noord-Holland, Netherlands",
  description: "The space
  This central located appartment is perfectly suited for 2 persons staying in Amsterdam. A great house with private garden where you can rest during your busy city break.
  There are many nice terraces around the corner and the Vondelpark and Rembandtpark are a 10-minute walk away. The apartment is located in a quiet street, but the bustle of the street is just around the corner.
  In the summer you can enjoy the BQQ in the garden.

  Spacious bedroom with double bed.
  A bathroom including bath and rain shower
  An equipped kitchen with all necessary kitchen equipmenta (Nespresso, oven, watercooker etc)
  A cozy living room with television including Netflix.
  WIFI

  • Schiphol (15 min with car, less than 30 with public transport)
  • Vondelpark & Remandtpark (10 min walk)
  • a lot of different restaurants and pubs around the corner
  • Museumsquare (10 min bike)
  • Leidse square (10 minute bike)
  • Central Station (15 minute bike)
  Also, there’s a tram stop within 100 meters",
  price_per_night: 359,
  number_of_guests: 2,
  user: user
)

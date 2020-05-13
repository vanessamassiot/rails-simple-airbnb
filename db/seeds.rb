# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning database ...."
Flat.destroy_all

puts "creating flats ..."

flat1= {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url:"https://source.unsplash.com/featured/?{HOME}{FLAT}"
}

flat2= {
  name: 'nice house',
  address: '10 avenue truc brussels',
  description: 'A wonderful flat gnagnagna',
  price_per_night: 85,
  number_of_guests: 4,
  picture_url:"https://source.unsplash.com/featured/?{HOUSE}"
}

flat3= {
  name: 'beautiful 2 bedrooms to make party!!',
  address: '10 avenue matignon 75001 Paris',
  description: 'Tout pour fêter la fin du confinement dans ce superbe appartement parisien proche de toutes commodités',
  price_per_night: 105,
  number_of_guests: 6,
  picture_url:"https://source.unsplash.com/featured/?{HOME}{DECO}"
}

flat4= {
  name: 'petit studio pourri',
  address: 'impasse des fauchés 75011 Paris',
  description: 'un petit studio tout pourri pour y caser ta belle mère pendant les vacances d été! ',
  price_per_night: 45,
  number_of_guests: 1,
  picture_url:"https://source.unsplash.com/featured/?{HOUSE}"
}

flat5= {
  name: 'Grande maison familiale',
  address: '2 rue des oliviers 06000 Nice',
  description: 'Une jolie maison familiale, avec une grand jardin histoire d avoir la paix avec les gosses ',
  price_per_night: 120,
  number_of_guests: 8,
  picture_url:"https://source.unsplash.com/featured/?{HOME}{BUILDING}"
}

flat6= {
  name: 'Superbe appartement',
  address: '10 Clifton Gardens Liège',
  description: 'je ne sais plus quoi marquer moi maintenant!! venez dans mon super appart!!',
  price_per_night: 90,
  number_of_guests: 2,
  picture_url:"https://source.unsplash.com/featured/?{HOUSE}"
}

[flat1, flat2, flat3, flat4, flat5, flat6].each do |attributes|
	flat = Flat.create!(attributes)
	puts "created #{flat.name}"
end
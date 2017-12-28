# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




10.times do |n|
  title  = Faker::Name.name
  website = "example-#{n+1}.com"
  Event.create!(title:  title,
              description: "Best Event Ever",
              date_time: DateTime.strptime("01/01/2018 19:00", "%m/%d/%Y %H:%M"),
              address: "1600 Pennsylvania Avenue, Washington, DC",
              price: 5,
              website: website)
end

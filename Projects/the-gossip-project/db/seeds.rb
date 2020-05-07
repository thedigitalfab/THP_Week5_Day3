# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#######################################################################
## GENERATE: Cities
#######################################################################

# Clean Cities table:
City.destroy_all
# Create a list of Cities:
seed_cities = [
    City.create(name: "Paris", zip_code: "75000"),
    City.create(name: "Marseille", zip_code: "13000"),
    City.create(name: "Lyon", zip_code: "69000"),
    City.create(name: "Toulouse", zip_code: "31000"),
    City.create(name: "Nice", zip_code: "06000"),
    City.create(name: "Nantes", zip_code: "44000"),
    City.create(name: "Strasbourg", zip_code: "67000"),
    City.create(name: "Montpellier", zip_code: "34000"),
    City.create(name: "Bordeaux", zip_code: "33000"),
    City.create(name: "Lille", zip_code: "59000"),
    City.create(name: "Rennes", zip_code: "35000"),
    City.create(name: "Reims", zip_code: "51100"),
    City.create(name: "Le Havre", zip_code: "76600"),
    City.create(name: "Saint-Etienne", zip_code: "42100"),
    City.create(name: "Toulon", zip_code: "83100"),
    City.create(name: "Grenoble", zip_code: "38000"),
    City.create(name: "Dijon", zip_code: "21000"),
    City.create(name: "Nîmes", zip_code: "30000"),
    City.create(name: "Angers", zip_code: "49000"),
    City.create(name: "Le Mans", zip_code: "72000"),
    City.create(name: "Brest", zip_code: "29000"),
    City.create(name: "Tours", zip_code: "37000"),
    City.create(name: "Limoges", zip_code: "87000"),
    City.create(name: "Perpignan", zip_code: "66000"),
    City.create(name: "Metz", zip_code: "57000")
]

#######################################################################
## GENERATE: Users
#######################################################################
# Clean Users table:
User.destroy_all
# Create a list of Users:
seed_users = []
2000.times do
    seed_user_first_name = Faker::Name.first_name
    seed_user_last_name = Faker::Name.last_name
    seed_user = User.create(
        first_name: seed_user_first_name,
        last_name: seed_user_last_name,
        age: rand(18..77),
        email: Faker::Internet.safe_email(name: "#{seed_user_first_name}_#{seed_user_last_name}"),
        city_id: seed_cities[rand(0..24)].id
    )
    seed_users << seed_user
end

#######################################################################
## GENERATE: Gossips
#######################################################################
# Clean Gossips table:
Gossip.destroy_all
# Create a list of Gossips:
seed_gossips = []
12000.times do
    seed_gossip = Gossip.create(
        title: Faker::Lorem.sentences(number: 1),
        content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),
        user_id: seed_users[rand(0..1999)].id
    )
    seed_gossips << seed_gossip
end

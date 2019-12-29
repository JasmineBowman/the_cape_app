# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
75.times do
  seeker = Seeker.new(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, seeker_signal:Faker::DcComics.hero, email: Faker::Internet.email, address: Faker::Address.street_address, city: Faker::Address.city, zip: Faker::Address.zip, phone: Faker:: PhoneNumber.cell_phone)

#   seeker.save
end

require 'faker'
75.times do
  hero = Hero.new(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, hero_handle:Faker::DcComics.hero, email: Faker::Internet.email, address: Faker::Address.street_address, city: Faker::Address.city, zip: Faker::Address.zip, phone: Faker:: PhoneNumber.cell_phone)

  hero.save
end


require 'faker'
75.times do
  seeker = Seeker.new(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, seeker_signal:Faker::DcComics.heroine, email: Faker::Internet.email, address: Faker::Address.street_address, city: Faker::Address.city, zip: Faker::Address.zip, phone: Faker:: PhoneNumber.cell_phone)

  seeker.save
end

require 'faker'
75.times do
  hero = Hero.new(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, hero_handle:Faker::DcComics.heroine, email: Faker::Internet.email, address: Faker::Address.street_address, city: Faker::Address.city, zip: Faker::Address.zip, phone: Faker:: PhoneNumber.cell_phone)

  hero.save
end
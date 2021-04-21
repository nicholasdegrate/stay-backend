# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Property.destroy_all
Host.destroy_all
Availability.destroy_all
Review.destroy_all
Property.reset_pk_sequence
Host.reset_pk_sequence
Availability.reset_pk_sequence
Review.reset_pk_sequence

nick = Host.create!(
    name: "nick",
    host_since: 2000,
    location: "Waco, Texas",
    age: 22,
    email: 'nicholas@gmail.com',
    phone: '342-435-5435',
    password: '123'
)


10.times do

    
    lockOrNOt = rand(1..2)
    
    result = ''

    if lockOrNOt == 1
        result = 'unlock'
    else
        result = 'locked'
    end


    Property.create!(
        property_type: 'hotel',
        rate: rand(1.0...5.0).round(2).to_s,
        address_name: Faker::Address.street_address,
        address_description: Faker::Address.full_address ,
        guest: rand(1...8),
        location:  Faker::Address.full_address ,
        price: rand(110...1200),
        bedrooms: rand(1...6),
        bathrooms: rand(1..4),
        door: result,
        energy: rand(200...700),
        noise: rand(10..110),
        host_id: nick.id,
    )
end

30.times do
    Review.create!(
        rating: rand(1.0...5.0).round(2).to_s,
        title: Faker::Quote.robin,
        name: Faker::Name.name ,
        comment: Faker::Quote.matz,
        property_id: rand(1...10)
    )
end
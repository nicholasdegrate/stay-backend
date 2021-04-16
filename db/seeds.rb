# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
    location: "texas",
    age: 25,
    email: 'nicholas@gmail.com',
    phone: '555-555-5555'
)

availability = Availability.create!(
    max_nights: 3,
    min_nights: 1
)

property = Property.create!(
    property_type: 'hotel',
    rate: 123,
    address: 'fort worth, texas',
    bedrooms: 4,
    bathrooms: 2,
    host_id: nick.id,
    availability_id: availability.id
)

review = Review.create!(
    rating: 4,
    title: "great place",
    name: "john",
    comment: "this was a great place",
    property_id: property.id
)
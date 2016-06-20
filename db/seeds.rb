# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create({name: "Selena Gomez Concert", venue: "Las Vegas", time: Time.now + 2.days,  price: 1000})
Event.create({name: "Miley Cyrus Concert", venue: "Las Vegas", time: Time.now + 3.days,  price: 1000})
Event.create({name: "Skrillex Concert", venue: "Las Vegas", time: Time.now + 5.days,  price: 1000})
Event.create({name: "Sonu Nigam Concert", venue: "Las Vegas", time: Time.now - 2.days,  price: 1000})
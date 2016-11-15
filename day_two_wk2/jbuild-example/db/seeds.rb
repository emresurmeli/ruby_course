# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cheese.create( name:"Donatello", price:32, source:"Milton, NY" )
Review.create( name:"Allison", rating:"4/5", description:"This was the most dank", cheese_id:1 )

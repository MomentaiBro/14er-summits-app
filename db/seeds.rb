# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Summit.destroy_all
Climber.destroy_all
Mountain.destroy_all

jeff = Climber.create name: "Jeff", hometown: "Charlotte, NC", age: 34
liz = Climber.create name: "Liz", hometown: "Manassus, VA", age: 37
greg = Climber.create name: "Greg", hometown: "Anchorage, AK", age: 33
annalise = Climber.create name: "Annalise", hometown: "Aspen, CO", age: 31
sarah = Climber.create name: "Sarah", hometown: "Denver, CO", age: 25

elbert = Mountain.create name: "Mt. Elbert", elevation: "14,433 feet", rank: 1
massive = Mountain.create name: "Mt. Massive", elevation: "14,421 feet", rank: 2
harvard = Mountain.create name: "Mt. Harvard", elevation: "14,420 feet", rank: 3
blanca = Mountain.create name: "Blanca Peak", elevation: "14,345 feet", rank: 4
la_plata = Mountain.create name: "La Plata Peak", elevation: "14,336 feet", rank: 5

Summit.create climber: jeff, mountain: elbert
Summit.create climber: jeff, mountain: massive
Summit.create climber: jeff, mountain: harvard
Summit.create climber: liz, mountain: elbert
Summit.create climber: liz, mountain: massive
Summit.create climber: greg, mountain: elbert
Summit.create climber: greg, mountain: massive
Summit.create climber: greg, mountain: harvard
Summit.create climber: annalise, mountain: elbert
Summit.create climber: annalise, mountain: massive
Summit.create climber: annalise, mountain: harvard
Summit.create climber: sarah, mountain: blanca
Summit.create climber: sarah, mountain: la_plata
Summit.create climber: jeff, mountain: la_plata
Summit.create climber: greg, mountain: la_plata
Summit.create climber: liz, mountain: blanca
Summit.create climber: annalise, mountain: blanca
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
hero1=Hero.create(name:'Superman')
hero2=Hero.create(name:'Spiderman')

power1=Power.create(name:'Flight',description:'Ability to fly in the air')
power3=Power.create(name:'Web-Slinging',description:'Ability to shoot strong webs')
power2=Power.create(name:'Super Strength',description:'Exceptional physical strength')

HeroPower.create(hero:hero1,power:power1,strength:'Strong')
HeroPower.create(hero:hero2,power:power3,strength:'Weak')
HeroPower.create(hero:hero1,power:power2,strength:'Average')
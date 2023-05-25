# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Car.find_or_create_by(brand: 'Chevrolet', model: 'Corsa') 
Car.find_or_create_by(brand: 'Chevrolet', model: 'Onix')
Car.find_or_create_by(brand: 'VW', model: 'UP')
Car.find_or_create_by(brand: 'VW', model: 'GOL')
Car.find_or_create_by(brand: 'Ford', model: 'Falcon')
Car.find_or_create_by(brand: 'Ford', model: 'Scort')
Car.find_or_create_by(brand: 'Toyota', model: 'Hilux')
Car.find_or_create_by(brand: 'Toyota', model: 'Corolla')


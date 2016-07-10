# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create! id: 1, proname: "Banana", price: 200
Product.create! id: 2, proname: "Apple", price: 150
Product.create! id: 3, proname: "Carton of Strawberries", price: 100
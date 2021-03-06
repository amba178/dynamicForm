# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
toys = Category.create!(name: "Toys & Games")
clothing = Category.create!(name: "Clothing")
music = Category.create!(name: "Music")
furniture = Category.create!(name: "Furniture")
electronics = Category.create!(name: "Electronics")


toys.products.create!(name: "Settlers of Catan", price: 34.95)
clothing.products.create!(name: "Red Shirt", price: 12.49)
toys.products.create!(name: "Technodrome", price: 27.99, discontinued: true)
furniture.products.create!(name: "Leather Couch", price: 499.99)
furniture.products.create!(name: "Coffee Table", price: 279.99)
music.products.create!(name: "Acoustic Guitar", price: 1025.00)
toys.products.create!(name: "Agricola", price: 45.99)

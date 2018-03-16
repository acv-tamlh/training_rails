# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
products = [
  [
    title: 'Ruby book',
    description: 'Learn ruby programing',
    price: 12.99
  ],
  [
    title: 'Java book',
    description: 'Learn Java programing',
    price: 12.99
  ],
  [
    title: 'C++ book',
    description: 'Learn C++ programing',
    price: 12.99
  ]
]
products.each do |product|
    Product.create(product)
end

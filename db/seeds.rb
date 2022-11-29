# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(username:'amos', email:'amos@gmail.com', password:'amos123')
User.create!(username:'stephen', email:'stephen@gmail.com', password:'stephen123')
User.create!(username:'brenda', email:'brenda@gmail.com', password:'brenda123')
User.create!(username:'brian', email:'brian@gmail.com', password:'brian123')
User.create!(username:'antoney', email:'antoney@gmail.com', password:'antoney123')
User.create!(username:'stacy', email:'stacy@gmail.com', password:'stacy123')

puts 'successful'
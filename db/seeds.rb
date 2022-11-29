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

puts 'User seeds done  ..'
puts 'Doctors seeding .....'

Doctor.create!([                                     
    {
      user_id: 1,
      name: "Dr Philip",                                                
    speciality: "Gynaecolgy",                                   
    image:"https://burst.shopify.com/",
    fee: 100
    },
    {
     user_id: 2,
    name: "Dr Stephen",                                               
    speciality: "Surgeon",                                       
    image:"https://burst.shopify.com/",
    fee: 50
    },
    {
      user_id: 3,
      name: "Dr Brian",
      speciality: "Psychologist",
      image:"https://burst.shopify.com/",
      fee: 50
    },
    {
      user_id: 4,
      name: "Dr Yoofi",
      speciality: "Dentist",
      image: "https://burst.shopify.com/",
      fee: 200
    },
    {
      user_id: 5,
      name: "Dr Edmund",
    speciality: "Optometrist",
    image: "https://burst.shopify.com/",
    fee: 300
    }
    ]);

puts 'Doctors seed successful ...'

puts ' Seeds successfully done ------'
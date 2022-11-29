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
      name: "Dr Owen",                                                
    details: "Internal Medecine",                                   
    image:"https://cdn.pixabay.com/photo/2017/05/23/17/12/doctor-2337835_960_720.jpg",
    fee: 100
    },
    {
    name: "Dr Chang",                                               
    details: "Dermatologist",                                       
    image:"https://cdn.pixabay.com/photo/2020/03/14/17/05/virus-4931227__340.jpg",
    fee: 50
    },
    {
      name: "Dr Levy",
      details: "Psychologist",
      image:"https://avatars.githubusercontent.com/u/87197412?s=400&u=08134e683e4128eba4edf0cba460849eccbb6eba&v=4",
      fee: 50
    },
    {
      name: "Dr Rida",
      details: "Dentist",
      image: "https://avatars.githubusercontent.com/u/72971752?v=4",
      fee: 200
    },
    {
      name: "Dr Akanbi",
    details: "Surgeon",
    image: "https://avatars.githubusercontent.com/u/83509786?v=4",
    fee: 300
    }
    ]);

puts 'Doctors seed successful ...'

puts ' Seeds successfully done ------'
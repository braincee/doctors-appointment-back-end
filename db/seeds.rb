# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create!(name:'amos', email:'amos@gmail.com', password:'amos123')
second_user = User.create!(name:'steve', email:'stephen@gmail.com', password:'stephen123')
third_user = User.create!(name:'brenda', email:'brenda@gmail.com', password:'brenda123')
fourth_user = User.create!(name:'brian', email:'brian@gmail.com', password:'brian123')
fifth_user = User.create!(name:'antoney', email:'antoney@gmail.com', password:'antoney123')

puts 'User seeds done  ..'
puts 'Doctors seeding .....'

first_doctor = Doctor.create!(user_id: first_user.id, name: 'Dr Philip', speciality: 'Gynaecology', fee: 200)
second_doctor = Doctor.create!(user_id: second_user.id, name: 'Dr Brian', speciality: 'Surgeon', fee: 150)
third_doctor = Doctor.create!(user_id: second_user.id, name: 'Dr Stephen', speciality: 'Psychologist', fee: 300)
fourth_doctor = Doctor.create!(user_id: third_user.id, name: 'Dr Louisa', speciality: 'Dentist', fee: 220)
fifth_doctor = Doctor.create!(user_id: fourth_user.id, name: 'Dr Edmund', speciality: 'Optometrist', fee: 130)

first_appointment = Appointment.create!(user_id: first_user.id, doctor_id: first_doctor.id, city: "Accra", appointment_time: "2022-12-12")


puts 'Doctors seed successful ...'

puts ' Seeds successfully done ------'
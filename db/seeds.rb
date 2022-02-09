# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1=City.create(name:"san francisco")
c2=City.create(name:"Boston")
c3=City.create(name:"San Diego") 

s1=Specialty.create(title:"Surgeon")
s2=Specialty.create(title:"Generalist")
s3=Specialty.create(title:"Optomologist")

d1=Doctor.create(firstname:"Reuebn",lastname:"Chouraki",zipcode:"94115",city:c1)
d2=Doctor.create(firstname:"Johnny",lastname:"Damon",zipcode:"10001",city:c2)
d3=Doctor.create(firstname:"Tom",lastname:"Brady",zipcode:"10002",city:c2)

p1=Patient.create(firstname:"Reuben",lastname:"Chouraki")
p2=Patient.create(firstname:"Johnny",lastname:"Richter")
p3=Patient.create(firstname:"Grace",lastname:"Fox")

a1=Appointment.create(patient:p1,doctor:d1)
a2=Appointment.create(patient:p2,doctor:d1)
a3=Appointment.create(patient:p3,doctor:d1) 

spd1=SpecialtyDoctor.create(specialty:s1,doctor:d1)
spd2=SpecialtyDoctor.create(specialty:s2,doctor:d1)
spd3=SpecialtyDoctor.create(specialty:s3,doctor:d2) 

puts "GET DOCTOR CITIES"

puts c2.doctors

puts "GET PATIENTS" 

puts d1.patients 

puts "GET specialties "

puts d1.specialtys


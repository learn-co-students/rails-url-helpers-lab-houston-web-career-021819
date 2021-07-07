# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.f

Student.destroy_all

Student.create(first_name: "Olivia", last_name: "Auzenne")
Student.create(first_name: "Brandi", last_name: "Greer")

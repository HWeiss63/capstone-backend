# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Event.create!(title: "24w appt", date: "September 12th", time: "11:00AM", location: "8901 Rockville Pike", memo: "Bring ID & Insraucne card", user_id: 1)
Event.create!(title: "Baby shower", date: "September 24th", time: "2:00PM", location: "7400 Tuckerman Ln", user_id: 1)

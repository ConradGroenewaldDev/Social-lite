# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "conrad1", email: "con1@gmail.com", password: "admin123", password_confirmation: "admin123")
User.create(username: "conrad2", email: "con2@gmail.com", password: "admin123", password_confirmation: "admin123")
User.create(username: "conrad3", email: "con3@gmail.com", password: "admin123", password_confirmation: "admin123")
User.create(username: "conrad4", email: "con4@gmail.com", password: "admin123", password_confirmation: "admin123")
User.create(username: "conrad5", email: "con5@gmail.com", password: "admin123", password_confirmation: "admin123")
User.create(username: "conrad6", email: "con6@gmail.com", password: "admin123", password_confirmation: "admin123")

p "Test Users created"
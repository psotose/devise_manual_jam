# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Story.destroy_all

10.times do |i|
    u = User.create(name: "User #{i}", email: "mail#{i}@gmail.com", password: "12345678")
    Story.create(title: "Story #{i}", picture: "https://picsum.photos/id/#{i+25}/400/200/", content: "Contenido #{i}", user: u )
  end
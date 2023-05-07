# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Jamaal", email: "jamaal@test.com", password_digest: "password")
User.create(name: "Molly", email: "molly@test.com", password_digest: "password")
User.create(name: "Mac", email: "mac@test.com", password_digest: "password")

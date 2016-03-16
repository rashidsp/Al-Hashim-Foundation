# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'alhasshimfd@gmail.com', password: 'alhashim204', password_confirmation: 'alhashim204')
roles = Role.create([{ name: 'admin' }, { name: 'financer' },{name: "regular"}])
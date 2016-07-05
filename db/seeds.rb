# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
p1 = Movie.create(title: 'First Movie', plot: 'An Airplane')
p2 = Movie.create(title: 'Second Movie', plot: 'A Train')

p3 = Movie.create(title: 'Third Movie', plot: 'A Truck')
p4 = Movie.create(title: 'Fourth Movie', plot: 'A Boat')

p3.reviews.create(body: "This movie was terrible")
p4.reviews.create(body: "This movie was the best thing in the whole world")
